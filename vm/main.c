typedef struct {
    // registers
    int a;
    int b;
    int c;
    int d;
} CPU;

CPU *new_CPU() {
    return &(CPU){ 0, 0, 0, 0 };
}

int main() {
    CPU *cpu = new_CPU();
    return 0;
}