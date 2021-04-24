#include <stdlib.h>
#include <stdio.h>

#include "memory.c"
#include "cpu.c"

int main() {
    CPU *cpu = new_CPU();
    // printf("%lD", (long)cpu->memory->buffer);
    return 0;
}