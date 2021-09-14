ASSUME CS:CODE, DS: DATA
DATA SEGMENT
    ARR DW 0009H, 0009H, 0001H, 000BH
    COUNT EQU 4
    LARGEST DW 01 DUP(?)
DATA ENDS

CODE SEGMENT
START:  MOV AX, DATA
        MOV DS, AX        
        LEA SI, ARR        
        MOV CX, COUNT
        MOV AX, [SI]        
        ADD SI, 2
        DEC CX
        
CONT:   CMP AX, [SI]
        JG NOCHANGE
        MOV AX, [SI]
        
NOCHANGE: ADD SI, 2
        LOOP CONT           
        MOV LARGEST, AX        
        MOV AH,4CH
        INT 21H
CODE ENDS
END START