#include <stdio.h>

int prints(char *msg)
{
    printf("%s", msg);
    return 0;
}

int printi(int val)
{
    printf("%d", val);
    return 0;
}

int printx(int val)
{
    printf("%X", val);
    return 0;
}

int printxn(int val, int length)
{
    printf("%0*X", length, val);
    return 0;
}
