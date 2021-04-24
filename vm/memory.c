typedef struct {
    void *buffer;
    int pointer;
} Memory;

Memory * new_Memory() {
    void *buffer = malloc(sizeof(int *) * 256);
    Memory *memory = &(Memory){ &buffer, 0 };
    return memory;
}