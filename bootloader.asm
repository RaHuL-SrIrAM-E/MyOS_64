[org 0x7c00]

mov [BOOT_DISK], d1

mov bp, 0x7c00
mov sp, bo

mov bx, TestString 
call PrintString

callReadDisk

jmp PROGRAM_SPACE

%include "print.asm"
%include "DiskRead.asm"

times 510-($-$$) db 0

dw 0x55aa