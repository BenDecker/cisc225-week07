; Multiply two unsigned integers using shifts and additions

global _start           ; expose program entry point

section .text           ; start of code segment

; Multiply these two integers, leave the result in RAX
MULTIPLICAND EQU 23
MULTIPLIER EQU 17

_start:


    ; End the program
    mov rax,0x3c            ; system call for exit 
    xor rdi,rdi             ; exit code 0
    syscall                 ; invoke operating system call 

section .data           ; start of initialized data segment

section .bss            ; start of uninitialized data segment 