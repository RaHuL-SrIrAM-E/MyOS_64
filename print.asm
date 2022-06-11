PrintString:

    push ax
    push bx

    mov ah 0x0e
    .Loop:
    cmp [bx], byte 0
    je .Exit
       mov a1, [bx]
       int 0x10
       int bx
       jmp .Loop
    
    .Exit:
    
    pop ax
    pop bx
    ret

TestString:
    db 'This is a test string'
