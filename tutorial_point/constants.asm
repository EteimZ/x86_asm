SYS_EXIT  equ 60
SYS_WRITE equ 1
STDIN     equ 0
STDOUT    equ 1

section .data
    msg1 db "Hello, programmers!", 0xA, 0xD ; 0xD is the carriage return character '\r'
    len1 equ $ - msg1

    msg2 db "Welcome to the world of, ", 0xA, 0xD
    len2 equ $ - msg2
    
    msg3 db "Linux assembly programming!", 0xA, 0xD
    len3 equ $ - msg3

section .text
    global _start

_start:
    ; Display msg1 to user
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg1
    mov rdx, len1

    syscall
    
    ; Display msg2 to user
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg2
    mov rdx, len2

    syscall
    
    ; Display message to user
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg3
    mov rdx, len3

    syscall
    
    mov rax, SYS_EXIT
    mov rdi, 0

    syscall
