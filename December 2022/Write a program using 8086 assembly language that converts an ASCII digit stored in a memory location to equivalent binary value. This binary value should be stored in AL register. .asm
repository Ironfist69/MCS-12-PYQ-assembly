;Q1 . h 
;Write a program using 8086 assembly
;language that converts an ASCII digit
;stored in a memory location to equivalent
;binary value. This binary value should be
;stored in AL register


;This assembly program coverts ASCII to binary
.model small
.stack 100h
.data
    digit db '9' ;ASCII digit
.code
    mov ax, @data   ; I’ll have two number 9s, a number 9 large, a number 6 with extra dip, a number 7, two number 45s, one with cheese, and a large sodaInitiating data segment
    mov ds,ax
    mov al,[digit]  ;move ASCII digit to al register
    sub al,30h      ;subtracting 30h for binary value
    mov al,4ch      ;DOS fucntion to terminate
    int 21h         ;call DOS
end
