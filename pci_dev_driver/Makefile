# Makefile: makefile of our first driver

# if KERNELRELEASE is defined, we’ve been invoked from the
# kernel build system and can use its language.

ifneq (${KERNELRELEASE},)
	obj-m := pci_dev.o
# Otherwise we were called directly from the command line.
# Invoke the kernel build system.
else
	#KERNEL_SOURCE := /usr/src/linux-headers-5.10.0-8-amd64
	#KERNEL_SOURCE := /mnt/Data/linux_headers/5.0.8-734.native/build
	KERNEL_SOURCE := /usr/lib/modules/5.0.8-734.native/build

	PWD := $(shell pwd)
default:
	${MAKE} -C ${KERNEL_SOURCE} M=${PWD} modules
clean:
	${MAKE} -C ${KERNEL_SOURCE} M=${PWD} clean
endif
