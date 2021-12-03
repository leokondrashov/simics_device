#include "file-io.h"

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// dummy function because it refuses to generate it from dml if .c file is in src
void init_local() {};

static int glob_fd = -1;
static char *filename;

void write_to_host(uint64 val) {
    if (glob_fd < 0)
        return;
    write(glob_fd, &val, 1);
}

set_error_t open_host(attr_value_t *val) {
    int fd = -1;
    const char *fname =
        SIM_attr_is_string(*val) ? SIM_attr_string(*val) : NULL;
    if (fname) {
        fd = open(fname, O_CREAT | O_WRONLY | O_TRUNC, 0666);

        if (fd < 0) {
            SIM_attribute_error("Failed opening file");
            return Sim_Set_Illegal_Value;
        }
    }

    if (filename) {
        close(glob_fd);
        MM_FREE(filename);
    }

    glob_fd = fd;
    filename = fname ? MM_STRDUP(SIM_attr_string(*val)) : NULL;

    return Sim_Set_Ok;
}

attr_value_t get_host_filename() {
    return SIM_make_attr_string(filename);
}
