[org 0x7c00]

mov bx, ExtendedSpaceSuccess
call PrintString

jmp $

%include "print.asm"

ExtendedSpaceSuccess:
     db 'we are successfully in expended space'

times 2048-($-$$) db 0