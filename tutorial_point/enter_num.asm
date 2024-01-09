; Define constants
section .data
    userMsg db "Please enter a number: "
    lenUserMsg equ $ - userMsg
    dispMsg db "You have entered: "
    lenDispMsg equ $ - dispMsg

; Define variables
section .bss
    num resb 5

; Code section
section .text
    global _start

_start:
    ; Prompt user by using the write system call
    mov rax, 1
    mov rdi, 1
    mov rsi, userMsg
    mov rdx, lenUserMsg
    
    syscall
    
    ; Get user input by using the read system call
    ; Then store it in the num variable
    mov rax, 0 
    mov rdi, 2
    mov rsi, num ; Where the user input will be stored
    mov rdx, 5   ; Data size 
    
    syscall    

    ; Display message to user
    mov rax, 1
    mov rdi, 1
    mov rsi, dispMsg
    mov rdx, lenDispMsg
    
    syscall

    ; Display the number the user entered
    mov rax, 1
    mov rdi, 1
    mov rsi, num
    mov rdx, 5

    syscall

    mov rax, 60 ; Call the exit system call
    mov rdi, 0  ; Set the return value to zero to indicate success
    syscall
    
