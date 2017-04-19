#define MEM_SIZE 2048
#define FREE_HASH 0x5ed7
#define BUSY_HASH 0x5ed8

static int g_memory_area[MEM_SIZE/sizeof(int)]; // the memory array
static char *g_memory = (char *)g_memory_area;  // the pointer to the memory array

typedef struct free_header {
    int hash; //indicator to determine block is in fact free
    int size;
    struct free_header* next; //ptr to the next free block
    struct free_header* prev; //ptr to the previous free block
} free_header;

typedef struct busy_header {
    int hash; //inficator to determine block is in fact busy
    int size;
} busy_header;

void my_mem_init();
void *my_malloc(int size);
void my_free(void *ptr);
void my_print_mem();
free_header *end_header(free_header *block);
free_header *next_block(free_header *block);
free_header *prev_block(free_header *block);
