#include <stdlib.h>
#include <stdio.h>

#include "cpu.c"

int main() {
    CPU *cpu = new_CPU();
    printf("%d\n", cpu->a);
    return 0;
}