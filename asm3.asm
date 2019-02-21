
 TITLE asm3 : An AL Program to display a string.

 .MODEL SMALL
 .STACK 100H

 .DATA
    STRING_1  DB  'I am learning Assembly!$'
    STRING_2  DB  'Welcome to details world!$'

 .CODE
   MAIN PROC
     MOV AX, @DATA                ; initialize DS
     MOV DS, AX

     LEA DX, STRING_1             ; load & display the STRING_1  
     MOV AH, 9            
     INT 21H

     MOV AH, 2                    ; carriage return
     MOV DL, 0DH
     INT 21H
 
     MOV DL, 0AH                  ; line feed
     INT 21H

     LEA DX, STRING_2             ; load & display the STRING_2  
     MOV AH, 9
     INT 21H

     MOV AH, 4CH                  ; return control to DOS
     INT 21H
   MAIN ENDP
 END MAIN
