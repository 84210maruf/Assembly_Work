.MODEL SMALL
.STACK 100H
.DATA 
MSG1 DB 'enter value: $'
MSG2 DB 'value is: $'
.CODE
MAIN PROC
    
    MOV AX,@DATA    ;INTIALIZATION OF DATA SEGMENT
    MOV DS, AX
    
    LEA DX, MSG1    ;PRINT MSG1
    MOV AH,9        
    INT 21H
     
     MOV AH,1
     INT 21H        ;INPUT
     MOV BL,AL 
      
     
     MOV AH,2
     MOV DL, 0DH    ;NEWLINE
     INT 21H
     MOV DL,0AH
     INT 21H 
      
    
    LEA DX, MSG2
    MOV AH,9        ;PRINT MSG2
    INT 21H 
           
     
     MOV AH,2
     MOV DL, BL    ;PRINT BL
     INT 21H
     
     MOV AH, 4CH
     INT 21H
     MAIN ENDP
END MAIN