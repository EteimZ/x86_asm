; The program displays nine stars

section .data
    msg db "Displaying 9 stars", 0xa ; Message to be displayed
    len equ $ - msg ; Length of message
    stars times 9 db "*" ; The nine stars to be displayed
    newline db 0xa ; New line character

section .text
    global _start

_start:
    ; Call the write system call to display the msg data
    mov rdx, len ; Set the length
    mov rsi, msg ; The message
    mov rdi, 1   ; write the message to standard output
    mov rax, 1   ; Set the system call to write
    
    syscall ; iniate the system call
    
    ; Call the write system call to display the stars
    mov rdx, 9     ; Set the length of the stars
    mov rsi, stars ; The star message
    mov rdi, 1     ; write the message to standard output
    mov rax, 1     ; Set the system call to write

    syscall ; iniate the system call
    
    ; print the new line character
    mov rdx, 1
    mov rsi, newline
    mov rdi, 1
    mov rax, 1

    syscall ; iniate the system call
    
    mov rax, 60 ; Call the exit system call
    mov rdi, 0  ; Set the return value to zero to indicate success
    syscall

