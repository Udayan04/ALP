section .data
s1 db 'udayan'
len: equ $-s1


section .text
global _start
_start:

mov ecx, s1
call toUpper
call print
mov eax, 1
mov ebx, 0

toUpper:
mov al, [ecx]
cmp al,0x0
je done
cmp al,'a'
jb next_char
sub al,0x20
mov [ecx],al

next_char:
inc ecx
jmp toUpper

done: ret

print:
mov eax,4
mov ebx,1
mov ecx,s1
mov edx,len
int 80h

mov eax,1
mov ebx,0
int 80h
