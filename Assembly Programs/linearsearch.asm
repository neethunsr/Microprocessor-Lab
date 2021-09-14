ASSUME CS:CODE, DS: DATA
DATA SEGMENT
    ARR DW 0002H, 0006H, 0004H, 0005H
    ITEM DW 0005H
    
    MSSG1 DB "ITEM FOUND$"
    MSSG2 DB "ITEM NOT FOUND$"
    
    COUNT EQU 4
DATA ENDS

CODE SEGMENT
START:  MOV AX, DATA
        MOV DS, AX        
        LEA SI, ARR        
        MOV CX, COUNT
        
CONT:   MOV AX, [SI]
        CMP AX, ITEM        
        JE FOUND            
        ADD SI, 2           
        LOOP CONT           
        MOV DX, OFFSET MSSG2
        MOV AH, 09H
        INT 21H
        JMP EXIT
        
FOUND:  MOV DX, OFFSET MSSG1
        MOV AH, 09H
        INT 21H
        
EXIT:   MOV AH,4CH
        INT 21H
CODE ENDS
END START