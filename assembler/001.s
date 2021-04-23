# Simple exit program
.section __TEXT,__text
.globl _main
_main:
  mov $10, %eax
  mov $3, %edx
  call power
  jmp end

power:
    pushq %rcx
    mov %eax, %ecx
  loop:
      dec %edx
      test %edx, %edx
      jz endpower
      imul %ecx, %eax
      jmp loop
  endpower:
      popq %rcx
      ret

end:
  movl $0x2000001, %eax 
  movl $0, %ebx
  syscall