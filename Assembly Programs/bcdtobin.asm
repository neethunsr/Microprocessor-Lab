ASSUME CS:CODE, DS: DATA

DATA SEGMENT
    NUM DW 0066H ;BCD NUMBER TO BE CONVERTED TO BINARY NUMBER
    RESULT DW 01 DUP(?)
DATA ENDS
CODE SEGMENT
START:  MOV AX, DATA
        MOV DS, AX
        MOV BX, NUM
        MOV AX, 0
        MOV CX, 0 ;RESULT IN CX

CONT:   CMP BX, 0
        JE EXIT
        MOV AL, BL
        SUB AL, 01H
        DAS
        MOV BL, AL
        MOV AL, BH
        JNC NEXT
        SUB AL, 01H
        DAS

NEXT:   MOV BH, AL
        INC CX
        JMP CONT
        
EXIT:   MOV RESULT, CX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START