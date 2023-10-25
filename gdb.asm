section .data



section .bss

section .text
global _start
_start:
mov al,12
mov bl,10
add al,bl

mov eax,1
mov ebx,0
int 80h
