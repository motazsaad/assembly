
 TITLE dowhile : An AL Program to print Upper Case Letters from A to Z
              ; ( Simulation of Do-While Loop ).

 .MODEL SMALL
 .STACK 100H

 .DATA
    PROMPT  DB  'The Upper Case Letters from A to Z are : $'

 .CODE
   MAIN PROC
     MOV AX, @DATA                ; initialize DS
     MOV DS, AX

     LEA DX, PROMPT               ; load and print PROMPT
     MOV AH, 9
     INT 21H

     MOV CX, 26                   ; initialize CX

     MOV AH, 2                    ; set output function
     MOV DL, 41H                  ; set DL=A

     @DO_WHILE_LOOP:              ; loop label
       INT 21H                    ; print character

       INC DL                     ; increment DL to next ASCII character
       DEC CX                     ; decrement CX
     JNZ @DO_WHILE_LOOP           ; jmp to label @DO_WHILE_LOOP

     MOV AH, 4CH                  ; return control to DOS
     INT 21H
   MAIN ENDP
 END MAIN

 
