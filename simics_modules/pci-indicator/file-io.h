#ifndef FILE_IO_H
#define FILE_IO_H

#include <simics/device-api.h>

void write_to_host();
set_error_t open_host(attr_value_t *val);
attr_value_t get_host_filename();

#endif // FILE_IO_H
