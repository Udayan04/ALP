section .data
msg db 'MIT ADT ,'
len: equ $-msg
msg2 db 'Pune',10
len2: equ $-msg

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

rw 4,1,msg,len
rw 4,1,msg2,len2

mov eax,1
mov ebx,0
int 80h
