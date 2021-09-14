ASSUME CS:CODE, DS: DATA
DATA SEGMENT
    ARR DW 0004H, 000AH, 0007H, 0002H
    COUNT EQU 4
DATA ENDS

CODE SEGMENT
START:  MOV AX, DATA
        MOV DS, AX        
        LEA SI, ARR        
        MOV CX, 0
        MOV BX, 0
        
LOOP1:  CMP CX, COUNT
        JGE EXIT1
        MOV BX, 0
        LEA SI, ARR
        MOV DI, COUNT
        SUB DI, CX
        DEC DI
        
LOOP2:  CMP BX, DI
        JGE EXIT2
        MOV AX, [SI]
        CMP AX, [SI+2]
        JL NOSWAP
        MOV DX, [SI+2]
        MOV [SI+2], AX
        MOV [SI], DX
        
NOSWAP: INC BX
        INC SI
        INC SI
        JMP LOOP2
        
EXIT2:  INC CX
        JMP LOOP1
        
EXIT1:  MOV AH,4CH
        INT 21H
CODE ENDS
END START