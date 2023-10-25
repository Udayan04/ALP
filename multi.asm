section .data
msg1 db 'enter first number'
len1: equ $-msg1
msg2 db 'enter second number'
len2: equ $-msg2
msg3 db 'multiplication is'
len3: equ $-msg3

section .bss
a resb 2
b resb 2
mult resb 2

section .text
global _start
_start:

%macro rw 4
mov eax,%1
mov ebx,%2
mov ecx,%3
mov edx,%4
int 80h
%endmacro

rw 4,1,msg1,len1
rw 3,0,a,2
rw 4,1,msg2,len2
rw 3,0,b,2

mov al,[a]
sub al,'0'
mov bl,'0'
mul bl
add al,'0'
mov [mult],al

rw 4,1,msg3,len3
rw 4,1,mult,2

mov eax,1
mov ebx,0
int 80h
