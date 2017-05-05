#pragma once
#include "oslib.h"
// Declare your public PIO functions here

// Configure the PIO device driver
void pio_setup();
void setupInterrupt(io_blk_t *io_blk);
