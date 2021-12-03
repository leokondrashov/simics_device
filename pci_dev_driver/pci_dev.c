/******************************************************************************
 *
 * Driver for simple PCI indicator device
 *
 * Char-class driver in terms of interface to the system
 * Dynamic allocation of major device type   
 *
 *****************************************************************************/

#include <linux/pci.h>
#include <linux/init.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/keyboard.h>
#include <linux/wait.h>
#include <linux/sched.h>
#include <linux/module.h>
#include <linux/input.h>
#include <linux/notifier.h>
#include <linux/delay.h>

// Define this symbol to do lots of "this function got called"
// Very useful for early debug of the driver flow.  It covers
// cases where we print on recurring calls, not on init or 
// rare calls like open. 
#define  DRIVER_VERBOSE


//----------------------------------------------------------
// Device name
//   DEV_NAME    appears under /dev/ in the file system
//   CLASS_NAME  
//----------------------------------------------------------
static const char *DEV_NAME = KBUILD_MODNAME;
#define CLASS_NAME   "indicator"

//----------------------------------------------------------
// Device structure, statically allocated
// - i.e., we can only have one of those devices
//----------------------------------------------------------

static struct  {
  struct pci_dev *pdev;
  struct class*  charClass; ///< The device-driver class struct pointer
  struct device* charDevice; ///< The device-driver device struct pointer

  // Hardware interface
  void __iomem  *bar0_base_addr;   // BAR0: control registers

  // Char device identity towards Linux OS
  int  major;     // major device number
  int  openCount; // count # of open sessions
} simics_pci_ind_dev;

//----------------------------------------------------------
//  PCI device ID table
//----------------------------------------------------------
static const struct pci_device_id id_table[] = {
  { PCI_DEVICE(0x104c, 0xAC10) },
  { 0, },
};

//----------------------------------------------------------
//
// CHAR DEVICE INTERFACE of the device
// - Allow open/close/read/write calls
//
// - Interface:
//      write() interprets a string of coordinates and color
//              values and puts them into the device
//              memory
//      read() blocks until a button is pressed
//        i.e., needs to set up interrupts to work
//
//----------------------------------------------------------
// Char device file operation functions
//----------------------------------------------------------
static int     chari_open(struct inode *, struct file *);
static int     chari_release(struct inode *, struct file *);
static ssize_t chari_read(struct file *, char *, size_t, loff_t *);
static ssize_t chari_write(struct file *, const char *, size_t, loff_t *);

// The header in /linux/fs.h lists the callback functions available
//
// Char devices at least need open, release, read, write to be defined
static struct file_operations fops =
{
   .open             = chari_open,
   .read             = chari_read,
   .write            = chari_write,
   .release          = chari_release,
};

//----------------------------------------------------------
// Char device file operations
//----------------------------------------------------------

// The device open function that is called each time the device is opened
// This will only increment the counter of open calls.  There is nothing
// special that needs to be done, since opening the device does not affect
// its state or operation - for this particular device.
//
// For a char device with several minor numbers, you would use the open
// call to set the file operations pointer in the filep argument to the
// apropriate set of read and write calls.
//
//  - inodep A pointer to an inode object (defined in linux/fs.h)
//  - filep A pointer to a file object (defined in linux/fs.h)
//
static int chari_open(struct inode *inodep, struct file *filep){
	pr_info(KBUILD_MODNAME
	        ": chari_open called!\n");
	simics_pci_ind_dev.openCount++;
	return 0;
}

//----------------------------------------------------------
// char driver read function
//----------------------------------------------------------
// This function is called whenever device is being read from user space i.e. data is
// being requested from the char device.
//
// Return value is the last written byte
//
// Parameters:
// - filep  - A pointer to a file object
// - buffer - The pointer to the buffer to which this function writes the data
// - len    - The length of the buffer
// - offset - The offset to read from, makes no sense for this device
//            We print it anyway to show what the call gets, but it is nothing
//            we can make much use of
//
static ssize_t chari_read(struct file *filep, char *buffer, size_t len, loff_t *offset) {
	pr_info(KBUILD_MODNAME
	        ": chari_read called!\n");
    *buffer = ioread8(simics_pci_ind_dev.bar0_base_addr);
    return 1;
}



// This function is called whenever the device is being written to from user space.
//
// Parameters:
//  - filep  A pointer to a file object
//  - buffer The buffer to that contains the string to write to the device.  We should really
//           mistrust this data, as it comes from an untrusted user-space process.
//  - len    The length of the array of data that is being passed in the const char buffer
//  - offset The offset if required
//
// Basically, take the data and poke it into the memory space, starting at the beginning of
// device base memory
// Writes one byte into device register

static ssize_t chari_write(struct file *filep, const char *buffer, size_t len, loff_t *offset){
    pr_info(KBUILD_MODNAME
	        ": chari_write called!\n");
    iowrite8(*buffer, simics_pci_ind_dev.bar0_base_addr);
    return 1;
}

// The device release function that is called whenever the device is closed/released by
// the userspace program.  Does not need to do anything for this device, since opening it
// does not do anything either.
//
// - inodep A pointer to an inode object (defined in linux/fs.h)
// - filep A pointer to a file object (defined in linux/fs.h)
//
static int chari_release(struct inode *inodep, struct file *filep){
    pr_info(KBUILD_MODNAME
            ": chari_release called!\n");
    // No else needs to be done, no need for clean-up
    return 0;
}

//----------------------------------------------------------
// PCI Init and Exit
//----------------------------------------------------------

// 
// Probe function.
//
// Called after the module is initialized, when there is a device in the hardware
// matching the IDs that we declared.  Or if the module is already loaded into 
// the kernel, and a device with a matching ID shows up.  This function is
// called as a result of the module init function calling pci_register_driver.
//
// If it not called, we have a problem with the kernel detecting our device.
//
// For the steps inside this driver, see
//  <linux>/Documentation/PCI/pci.txt
//

static int
simics_pcie_probe(struct pci_dev *pdev,
          	  	  const struct pci_device_id *id)
{
    int           err;
    void __iomem *bar0;

    // Link speed and width
    enum pci_bus_speed speed = PCI_SPEED_UNKNOWN;
    enum pcie_link_width width = PCIE_LNK_WIDTH_UNKNOWN;
    struct pci_dev *dummy_limiting_dev;
    
    // For debug and understanding the flow, printk that we are in the
    // pcie probe function
    pr_info(KBUILD_MODNAME
            ": PCIe probe function called.\n");

    // Enable the device, must be done first before anything else
    // is done with the device.
    //
    // Since our device does not use IO BARs, we use the _mem version
    //
    err = pci_enable_device_mem(pdev);
    if(err) {
        pr_err(KBUILD_MODNAME
                ": Failed to enable PCIe device: %d\n", err);
        return err;
    }
    pr_info(KBUILD_MODNAME
            ": PCIe device enable successful.\n");

    pci_set_master(pdev);
    pr_info(KBUILD_MODNAME
            ": PCI bus mastering enabled.\n");

    // Get access to the PCI regions, which ensures we are
    // the only driver for this device (if I understand the kernel
    // documentation correctly)
    //
    //  To clean up, use pci_release_regions(pdev)
    //
    err = pci_request_regions(pdev, DEV_NAME);
    if (err) {
        pr_err(KBUILD_MODNAME
                ": Failed to request regions: %d\n", err);
        return err;
    }
    pr_info(KBUILD_MODNAME
            ": PCIe device requested and obtained regions.\n");

    // Save the device pointer into our global data structure
    simics_pci_ind_dev.pdev = pdev;

    // Diagnose the nature of our connection to the rest of the
    // system - bus width and speed
    //
    // enum width: actual numeric value of width, easy
    // enum speed: complex encoding
    //
    err = pcie_bandwidth_available(pdev, &dummy_limiting_dev, &speed, &width);
    if ( err != 0 ||
            speed == PCI_SPEED_UNKNOWN ||
            width == PCIE_LNK_WIDTH_UNKNOWN) {
        pr_warn(KBUILD_MODNAME
                ": Failed to request determine link speed and width! (%d) \n", err);
    } else {
        char *pciegen = "unknown";
        switch (speed){
        case PCIE_SPEED_8_0GT:
            pciegen = "3.0";
            break;
        case PCIE_SPEED_5_0GT:
            pciegen = "2.0";
            break;
        case PCIE_SPEED_2_5GT:
            pciegen = "1.0";
            break;
        default:
            // Making the assumption Linux enum will be built out seequentially
            if(speed > PCIE_SPEED_8_0GT) {
                pciegen = "beyond 3";
            } else {
                // I would assume we would never get this answer asking for PCIe
                // connection speeds, but better to program defensively
                pciegen = "PCI";
            }
      }
      pr_info(KBUILD_MODNAME
              ": PCIe link properties: gen=%s, width=%d, speed=%d.\n",
              pciegen, width, speed);
    }

    // Remap BAR0, where our registers live, so that we can start
    // accessing the device.  If we used more BARs, we would map
    // them here too.
    //
    //   To clean up, use iounmap()
    //
    bar0 = pci_ioremap_bar(pdev, 0);
    if (!bar0) {
        err = -ENOMEM;
        pr_err(KBUILD_MODNAME
                ": Failed to remap BAR0, reporting ENOMEM\n");
        return err;
    }
    simics_pci_ind_dev.bar0_base_addr = bar0;
    pr_info(KBUILD_MODNAME
            ": Access to BAR0 ready, mapped at 0x%p.\n", bar0);

    pr_info(KBUILD_MODNAME
            ": PCIe probe function returned successfully!\n");

    return 0;
}

//----------------------------------------------------------
// remove function:
// -- Called when the PCIe device is getting released by the
//    kernel, like after a rmmod call
//----------------------------------------------------------
static void
simics_pcie_remove(struct pci_dev *pdev)
{
	pr_info(KBUILD_MODNAME
	        ": PCIe exit function called.\n");

	// Unmap IO
	iounmap(simics_pci_ind_dev.bar0_base_addr);

	// Release regions
	pci_release_regions(pdev);

	// Disable the device
	pci_disable_device(pdev);
}


//----------------------------------------------------------
// PCI Driver structure
// -- Passed to the kernel at module init time to give it
//    the probe and remove functions
//----------------------------------------------------------
static struct pci_driver simics_pcie_driver_pci = {
  .name     = KBUILD_MODNAME,
  .id_table = id_table,
  .probe    = simics_pcie_probe,
  .remove   = simics_pcie_remove
};


//----------------------------------------------------------
// Module init & exit
// -- This is the general kernel init and exit code, common
//    to all types of devices.  It sets up the module as a
//    PCIe and char device, so that the kernel can call the
//    other device functions we have above.
//----------------------------------------------------------
static int __init pcie_module_init(void) {
	int err;
    int majorNumber = 0;

	// Just to see if we loaded
	pr_info(KBUILD_MODNAME
	        ": Device driver initialization started\n");

    // Char device driver: register major number
    majorNumber = register_chrdev(0, DEV_NAME, &fops);
    if (majorNumber<0){
       pr_err(KBUILD_MODNAME
    		   	": failed to register a major number for char driver\n");
       return majorNumber;
    }
    pr_info(KBUILD_MODNAME
	        ": Registered correctly with major number for char driver = %d\n", majorNumber);
    simics_pci_ind_dev.major     = majorNumber;
    simics_pci_ind_dev.openCount = 0;

    //
    // Register as a device class so that we can be found
    //
    simics_pci_ind_dev.charClass = class_create(THIS_MODULE, CLASS_NAME);
    if (IS_ERR(simics_pci_ind_dev.charClass)){
    	// Clean up
       unregister_chrdev(simics_pci_ind_dev.major, DEV_NAME);
       pr_err(KBUILD_MODNAME
    		   	": Failed to register device class\n");
       return PTR_ERR(simics_pci_ind_dev.charClass);          // Correct way to return an error on a pointer
    }
    pr_info(KBUILD_MODNAME
	        ": Device class '%s' registered correctly\n", CLASS_NAME);

    //
    // Register the device driver as a char device
    //
    simics_pci_ind_dev.charDevice = device_create(simics_pci_ind_dev.charClass,
                                               NULL,
                                               MKDEV(simics_pci_ind_dev.major, 0),
                                               NULL,
                                               DEV_NAME);
    if (IS_ERR(simics_pci_ind_dev.charDevice)){               // Clean up if there is an error
       class_unregister(simics_pci_ind_dev.charClass);
       class_destroy(simics_pci_ind_dev.charClass);
       unregister_chrdev(simics_pci_ind_dev.major, DEV_NAME);
       pr_err(KBUILD_MODNAME
    		   	": Failed to create the char device\n");
       return PTR_ERR(simics_pci_ind_dev.charDevice);
    }
    pr_info(KBUILD_MODNAME
	        ": Char device driver registration successful\n");

    //
    // Register as PCI device
    //
    pr_info(KBUILD_MODNAME
	        ": PCI device driver registration started\n");
    err = pci_register_driver(&simics_pcie_driver_pci);
    if (err) {
    	device_destroy(simics_pci_ind_dev.charClass, MKDEV(simics_pci_ind_dev.major, 0));     // remove the device
    	class_unregister(simics_pci_ind_dev.charClass);
        class_destroy(simics_pci_ind_dev.charClass);
        unregister_chrdev(simics_pci_ind_dev.major, DEV_NAME);
        pr_err(KBUILD_MODNAME
        		": PCI device driver registration failed for %s\n",
        		DEV_NAME);
        return err;
    }
    pr_info(KBUILD_MODNAME
	        ": PCI device driver registration successful\n");


    //
    // Driver init completed and successful. Do a kernel printout 
    // that can be used to test for this success.  
    //
    // Change this message to see that you have managed to update
    // the driver code.  
    //
    pr_info(KBUILD_MODNAME
	        ": Device driver initialization successful\n");
    // Return success
    return 0;
}

static void __exit pcie_module_exit(void){
	pr_info(KBUILD_MODNAME 
	        ": Goodbye and good night!\n");

	// Clean up all the things we allocated
	class_unregister(simics_pci_ind_dev.charClass);
    class_destroy(simics_pci_ind_dev.charClass);
    unregister_chrdev(simics_pci_ind_dev.major, DEV_NAME);
    pci_unregister_driver(&simics_pcie_driver_pci);
	device_destroy(simics_pci_ind_dev.charClass, MKDEV(simics_pci_ind_dev.major, 0));     // remove the device
}
 
module_init(pcie_module_init);
module_exit(pcie_module_exit);

//----------------------------------------------------------
// Module metadata
//----------------------------------------------------------
MODULE_DESCRIPTION("Simics PCI indicator device driver");
MODULE_AUTHOR("Leonid Kondrashov <kondrashov.ls@phystech.edu>");
MODULE_LICENSE("GPL v2");
MODULE_DEVICE_TABLE(pci, id_table);



