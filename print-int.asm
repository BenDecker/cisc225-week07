; Output an unsigned doubleword to the console as 10 digits

global _start           ; expose program entry point

section .text           ; start of code segment

; Print N to the console
N equ 36247890

_start:

    mov rax,1653423         ; output this nubmer to console in decimal form

    mov rcx,buf_len         ; set up for loop counter
    sub rcx,1               ; loop counter (number of digits in buf)
    mov rdi,buf             ; address for output buffer
    add rdi,buff_len        
    sub rdi,2               ; address for right most digit

    mov rbx,10              ; divisor for extracting digits
L1:
    mov rdx,0               ; set up high 64-bits for division
    div rbx                 ; divide rax by 10
    add dl,'0'              ; convert remainder to ASCII character
    mov [rdi],dl            ; move character to output buffer
    dec rdi
    loop L1                 ; get next digit

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
    buf_len equ $-buf
section .bss            ; start of uninitialized data segment 