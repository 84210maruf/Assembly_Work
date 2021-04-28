.MODEL SMALL
.STACK
.CODE
   
     ;LIKE MAIN FUNCTION
MAIN PROC
    
    ;INPUT
    MOV AH,1       ;INPUT FUNCTION
    INT 21H        ;EXICUTE
    MOV BL,AL      ;COPY AL(right) to BL(left) Register  
         
         
    ;NEW LINE PRINT
    MOV AH,2
    MOV DL,10      ;10 IS ASCII OF NEWLINE
    INT 21H   
    MOV DL,13
    INT 21H 
    
    
    ;OUTPUT
    MOV AH,2       ;OUTPUT FUNCTION
    MOV DL,BL      ;Copy BL to DL(DL register working for PRINT)
    INT 21H        ;DL Alwyes print with any value    
    
    
    ;FOR exit MAIN func
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN