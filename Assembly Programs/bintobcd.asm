ASSUME CS:CODE
CODE SEGMENT
START:  MOV BX, 0042H   ;BINARY NUMBER TO BE CONVERTED TO BCD
                        ;EQUIVALENT DECIMAL NUMBER IS 0066
        MOV AX, 0
        MOV CX, 0       ;RESULT IN CX
        
CONT:   DEC BX
        MOV AL, CL
        ADD AL,01H
        DAA
        MOV CL, AL
        MOV AL, CH
        ADC AL, 00H
        DAA
        MOV CH, AL
        CMP BX, 0
        JG CONT
        MOV AH,4CH
        INT 21H
CODE ENDS
END START