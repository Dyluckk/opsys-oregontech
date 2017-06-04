#pragma once

#define YIELD_CALL 400
#define SLEEP_CALL 500
#define TIME_CALL 600

typedef struct {
    int op;
    int param1;
    int param2;
} io_blk_t;
