# STEPIK // LESSON 21124 // step 5
.section __TEXT,__text
.globl _main

# Function power
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

#Function print
print:
  pushq %rax                    # caller-save register
  pushq %rcx                    # caller-save register

  movq format@GOTPCREL(%rip), %rdi # set 1st parameter (format)
  movq %rax, %rsi              # set 2nd parameter (current_number)
  xor %rax, %rax              # because printf is varargs

  # Stack is already aligned because we pushed three 8 byte registers
  call _printf                  # printf(format, current_number)

  popq %rcx                    # restore caller-save register
  popq %rax                    # restore caller-save register
  ret

# Function main
_main:
  mov $15, %eax
  mov $2, %edx
  call power
  call print
  jmp end

end:
  movl $0x2000001, %eax 
  movl $0, %ebx
  syscall

format:
  .asciz  "%20ld\n"