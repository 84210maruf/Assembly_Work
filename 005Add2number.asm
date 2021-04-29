.MODEL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    INT 21H
    
    MOV CL,AL
    
    ADD BL,CL   ;BL = BL+CL  
    
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H