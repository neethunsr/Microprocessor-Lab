ASSUME CS:CODE, DS: DATA
DATA SEGMENT
    ARR1 DW 0007H, 0005H, 0008H, 0004H
    ARR2 DW 0003H, 0001H, 0002H, 0004H
    COUNT EQU 4
    RESULT DW 04 DUP(?)
DATA ENDS

CODE SEGMENT
START:  MOV AX, DATA
        MOV DS, AX
        LEA SI, ARR1
        LEA DI, ARR2
        LEA BX, RESULT
        MOV CX, COUNT
        MOV AX, 0
        
CONT:   MOV AX, [SI]
        ADD AX, [DI]
        MOV [BX], AX
        ADD SI, 2
        ADD DI, 2
        ADD BX, 2
        LOOP CONT
        MOV AH,4CH
        INT 21H
CODE ENDS
END START