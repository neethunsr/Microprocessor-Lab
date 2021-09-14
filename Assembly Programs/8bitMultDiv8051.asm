ORG 0000H

;MULTIPLICATION
MOV A, #32H ;MULTIPLICAND
MOV B, #11H ;MULTIPLIER

MUL AB

MOV R1, A ;LOWER BYTE OF RESULT IN R1
MOV R0, B ;HIGHER BYTE OF RESULT IN R0

;DIVISION
MOV A, #10H ;DIVIDEND
MOV B, #03H ;DIVISOR

DIV AB

MOV R3, A ;QUOTIENT
MOV R2, B ;REMAINDER

END