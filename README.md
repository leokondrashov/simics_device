# simics_device
Simics device project for MIPT course

## Contents
Project contains thee main parts:
* Simics device module (`simics_modules/*`)
* Linux driver for such device
* STM32 firmware for implementation of real device with intended behavior

All connections are shown in the picture:

<p align="center">
  <img src="https://github.com/leokondrashov/simics_device/blob/master/scheme.png"/>
  <p align="center"> Logic connections <p align="center">

### Device model
Device model is simple PCI device with 1-byte register that controls behavior of device. Since it models output device, we don't need anything more for this device to function.

From standpoint of current implementation of device it is just 1-byte memory. In addition to that device has all values written to host file, that can be passed as an attribute.

#### Internal structure
Device consists of two parts: component for connecting device model to PCI bus in Simics and device model itself. Component is just modified example from examples for PCI device. Device model is PCI device with one register in bank and optional attribute for filename. All host file IO is implemented in additionsl C file which is built together with main DML file.

#### Running
Contents of `simics_modules` should be copied into `modules` directory of Simics project. Simics script for configuration with created device is `pci_deice.simics` (note that you need to change dsp-clear-linux script file to actually run it in Simics). After that file can be set as follows: `pci_ind.indicator->filename = dump.txt`. After that all recieved data by device will be written into the file.

### Linux driver
Driver is simple PCI driver based on one from training labs package of Simimcs. Mainly it implements all file operations on device file representing our device. Write and read functions use that fact that it's actually only one 1-byte register that controls whole device.

All compilation result is for default QSP Clear Linux distro that comes with main Simics package, to run it you need to get at least `pci_dev.ko` to guest system and `insmod` it. With module loaded a character device file `/dev/pci_dev` will appear.

### STM32 firmware
Firmware is based on labs from this [course](https://github.com/edosedgar/stm32f0_ARM "STM32 course from DREC"). It takes values from USART, parses it to a number and shows it on seven-segment indicators in hexadecimal format.

STM32Discovery board is connected via USB-USART connector. From host Linux system it is visible as character device file `/dev/ttyACM1`, so it can be used as destinamtion for device model output to host FS.
