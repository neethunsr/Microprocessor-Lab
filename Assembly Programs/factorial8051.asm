ORG 00H
MOV 20H, #04H
MOV R1, 20H 
MOV A, #01H 

LOOP1:
MOV B, R1 
MUL AB 
DEC R1 
CJNE R1, #00H, LOOP1
END