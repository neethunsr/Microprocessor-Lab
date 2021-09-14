ASSUME CS:CODE, DS: DATA

DATA SEGMENT
    ARR DW 0003H, 0001H, 0002H, 2001H
    COUNT EQU 4
    RESULT DW 01 DUP(?)
DATA ENDS

CODE SEGMENT
START:  MOV AX, DATA
        MOV DS, AX 
        LEA SI, ARR
        MOV CX, COUNT
        MOV AX, 0
        
CONT:   ADD AX, [SI]
        INC SI
        INC SI
        LOOP CONT
        
        MOV RESULT, AX
        
        MOV AH,4CH
        INT 21H
CODE ENDS
END START