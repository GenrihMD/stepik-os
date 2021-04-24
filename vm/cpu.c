typedef struct {
    // registers
    int a;
    int b;
    int c;
    int d;

    Memory *memory;
} CPU;

CPU * new_CPU() {
    Memory *memory = new_Memory();
    CPU *cpu = &(CPU){ 0, 0, 0, 0, memory };
    return cpu;
}
