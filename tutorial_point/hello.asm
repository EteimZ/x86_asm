; Hello world program in x86_64(linux)

section .data
    msg db "Hello, world!", 0xa ; string to be printed, 0xa is the newline character
    len equ $ - msg ; Get the length of the string

section .text
    global _start

_start:
    ; Call the write system call
    mov rdx, len ; Set the length to be printed
    mov rsi, msg ; The message to be printed
    mov rdi, 1   ; 1 represents stdout output
    mov rax, 1   ; Specify we want the write system call
    
    syscall ; Iniate the system call
    
    mov rax, 60 ; Call the exit system call
    mov rdi, 0  ; Set the return value to zero to indicate success
    syscall

