; Output an unsigned doubleword to the console as 10 digits

global _start           ; expose program entry point

section .text           ; start of code segment

; Print N to the console
N equ 36247890

_start:




    ; Write buf to the console
    mov rax,1               ; system call for write 
    mov rdi,1               ; file handle for stdout
    mov rsi,buf             ; address of output string
    mov rdx,hello_str_len   ; size of output string 
    syscall                 ; invoke operating system call 

    ; End the program
    mov rax,0x3c            ; system call for exit 
    xor rdi,rdi             ; exit code 0
    syscall                 ; invoke operating system call 

section .data           ; start of initialized data segment

    buf db "xxxxxxxxxx",0xa     ; output string with newline

section .bss            ; start of uninitialized data segment 