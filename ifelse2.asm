
 TITLE ifelse : An AL Program that reads a character and prints it only if it
              ; is 'y' or 'Y' (Simulation of If-Else then structure).

 .MODEL SMALL
 .STACK 100H

 .DATA
    PROMPT  DB  'Enter the character : $'
    MSG_1   DB  'The input letter is : $'
    MSG_2   DB  'The input character is not "y" or "Y".$'

 .CODE
   MAIN PROC
     MOV AX, @DATA                ; initialize DS
     MOV DS, AX

     LEA DX, PROMPT               ; load and print PROMPT
     MOV AH, 9
     INT 21H

     MOV AH, 1                    ; read a character
     INT 21H

     MOV BL, AL                   ; save the input character into BL

     MOV AH, 2                    ; carriage return
     MOV DL, 0DH
     INT 21H

     MOV DL, 0AH                  ; line feed
     INT 21H

     CMP BL, "y"                  ; compare input character and "y"

     JE @DISPLAY                  ; jump to label @DISPLAY if input=y

     CMP BL, "Y"                  ; compare input character and "Y"

     JE @DISPLAY                  ; jump to label @DISPLAY input="Y"

     LEA DX,MSG_2                 ; load and print MSG_2
     MOV AH, 9
     INT 21H

     JMP @EXIT                    ; jump to label @EXIT

     @DISPLAY:                    ; jump label
       LEA DX,MSG_1               ; load and print MSG_1
       MOV AH, 9
       INT 21H

       MOV AH, 2                  ; print the character
       MOV DL, BL
       INT 21H
     @EXIT:                       ; jump label

     MOV AH, 4CH                  ; return control to DOS
     INT 21H
   MAIN ENDP
 END MAIN
