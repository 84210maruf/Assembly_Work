.MODEL
.STACK 100H
.CODE
 MAIN PROC
    
    ;MULTIPLE INPUT
    MOV AH,1
    INT 21H        
    
    
    MOV BL,AL
    INT 21H
    
    MOV BH, AL
    INT 21H
    
    MOV CH, AL
    INT 21H
    
    MOV CL, AL
    INT 21H
              
    ;NEW LINE
    MOV AH,2
    
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
           
    ;output
    MOV AH,2
    
    MOV DL, BL
     INT 21H
     
    MOV DL, BH
    INT 21H
    
    MOV DL, CH
    INT 21H
    
    MOV DL, CL
    INT 21H   
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN