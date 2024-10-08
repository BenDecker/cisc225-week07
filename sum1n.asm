; Sum integers from 1 through N using formula

global _start           ; expose program entry point

section .text           ; start of code segment

N equ 10 ; Calculate sum of 1 through N, leave result in RAX

_start:

    mov rax,[num]
    mov rbx,rax
    inc rbx
    mul rbx
    shr rax,1

    ; End the program
    mov rax,0x3c            ; system call for exit 
    xor rdi,rdi             ; exit code 0
    syscall                 ; invoke operating system call 

section .data           ; start of initialized data segment

    num dq 4

section .bss            ; start of uninitialized data segment 