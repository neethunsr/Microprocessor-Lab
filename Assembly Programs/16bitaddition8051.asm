ORG 0000H
MOV R0, #45H
MOV R1, #54H ;R0R1 FORMS FIRST 16 BITS

MOV R2, #22H
MOV R3, #22H ;R2R3 STORES SECOND NUMBER

MOV A, R1
ADD A, R3
    
MOV R5, A

MOV A, R0
ADDC A, R2

MOV R4, A ;RESULT IN R4R5

END