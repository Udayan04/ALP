section .data
s1 db 'hello, world',10
len: equ $-1

section .bss
s2 resb 20

section .text
global _start
_start:

mov ecx, len
mov ebx, s1
mov edi, s2
cld
rep movsb

mov eax,4
mov ebx,1
mov ecx,s2
mov edx,20
int 80h

mov eax,1
mov ebx,0
int 80h
