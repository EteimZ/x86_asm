; This program can perform addition on single digit numbers

SYS_EXIT  equ 60
SYS_READ  equ 0
SYS_WRITE equ 1
STDIN     equ 0
STDOUT    equ 1

; Define variables
section .data
    msg1 db "Enter a digit: ",
    len1 equ $ - msg1
    
    msg2 db "Please enter a second digit: ",
    len2 equ $ - msg2
    
    msg3 db "The sum is:"
    len3 equ $ - msg3

; Define unitialized data
segment .bss
    num1 resb 2
    num2 resb 2
    res  resb 1

section .text
    global _start

_start:
    ; Display msg1 to user
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg1
    mov rdx, len1

    syscall
    
    ; Get num1 from user
    mov rax, SYS_READ
    mov rdi, STDIN
    mov rsi, num1
    mov rdx, 2

    syscall
    
    ; Display msg2 to user
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg2
    mov rdx, len2

    syscall
    
    ; Get num1 from user
    mov rax, SYS_READ
    mov rdi, STDIN
    mov rsi, num2
    mov rdx, 2

    syscall

    ; Display msg3 to user
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg3
    mov rdx, len3
    
    syscall
    
    ; Move the first number to rax register and second number to rbx register
    ; sub operand '0' command converts the input string to integer
    mov rax, [num1] ; Get the memory address of num1 and place it in rax
    sub rax, '0'

    mov rbx, [num2] ; Get the memory address of num2 and place it in rbx
    sub rbx, '0'
    
    add rax, rbx ; Add rbx to rax
    add rax, '0' ; Convert sum to integer

    mov [res], rax ; Store the sum in res location

    ; Display msg2 to user
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, res
    mov rdx, 1

    syscall

exit:
    mov rax, SYS_EXIT
    mov rdi, 0
    
    syscall

