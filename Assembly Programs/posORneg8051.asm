ORG 00H 

MOV R0, #00H
MOV R1, #00H
MOV 20H, #0FFH
MOV A, 20H
RLC A 
JC NEG 
MOV R0, #01H 
JMP POS 

NEG: MOV R1, #01H 

POS: END