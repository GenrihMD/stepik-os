typedef struct {
    // registers
    int a;
    int b;
    int c;
    int d;
} CPU;

CPU *new_CPU() {
    CPU *cpu = &(CPU){ 0, 0, 0, 0 };
    return cpu;
}
