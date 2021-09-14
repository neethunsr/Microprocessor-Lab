ORG 00H 
MOV DPTR, #1000H ;INITIALIZE POINTER TO MEMORY WHERE NUMBERS ARE STORED
MOV R0, #05H ;INITIALIZE COUNTER 
MOVX A, @DPTR
MOV R3, A ;MAXIMUM: FIRST ELEMENT
MOV R2, A ;MINIMUM: FIRST ELEMENT 

AGAIN:  MOVX A, @DPTR 
        CLR C 
        MOV R6, A 
        SUBB A, R3
        JNZ NE 
        AJMP SKIP1 
        
NE:     JC SKIP1
        MOV A, R6
        MOV R3, A 
        
SKIP1:  INC DPTR 
        DJNZ R0, AGAIN 
        
MOV DPTR, #1000H 
MOV R0, #05H 

AGAIN1: MOVX A, @DPTR 
        CLR C 
        MOV R6, A 
        SUBB A, R2 
        JNZ NE1 
        AJMP SKIP2 
        
        NE1: JNC SKIP2 
        MOV A, R6
        MOV R2, A 
        
        SKIP2: INC DPTR 
        DJNZ R0, AGAIN1 
        
END