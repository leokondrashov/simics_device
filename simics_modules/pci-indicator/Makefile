#                                                              -*- Makefile -*-
# Simics module makefile
#

SIMICS_API := 6
THREAD_SAFE:=yes
MODULE_CLASSES = pci_indicator

SRC_FILES= file-io.c pci-indicator.dml
PYTHON_FILES := module_load.py

EXTRA_MODULE_VPATH += dml-lib

include $(MODULE_MAKEFILE)
