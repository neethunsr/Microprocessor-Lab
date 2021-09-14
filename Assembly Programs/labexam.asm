 ORG 0H
	ARRAY_ADDR EQU 000H
	ELEMENT_COUNT EQU 05H
MAIN:   MOV DPTR,#ARRAY_ADDR 

	MOV A, #06H
	MOVX @DPTR,A
	INC DPTR

	MOV A, #05H
	MOVX @DPTR,A
	INC DPTR

	MOV A, #04H
	MOVX @DPTR,A
	INC DPTR

	MOV A, #03H
	MOVX @DPTR,A
	INC DPTR

	MOV A, #02H
	MOVX @DPTR,A
	

	MOV R6, #ELEMENT_COUNT
	DEC R6
	
	
	MOV R7, #ELEMENT_COUNT

	MOV R0, #ARRAY_ADDR 
	
	MOV R2, #0

LOOP1:	MOV A, R0
	ADD A, #1
	MOV R1, A
	
	MOV A, #ELEMENT_COUNT
	SUBB A, R2
	MOV R7, A
	DEC R7
	
	INC R2
	
LOOP2:	MOVX A,@R0
	MOV B, A 
	
	MOVX A, @R1 
	SUBB A, B
	JC SWAP
		
	JMP OUT1
	
SWAP:	MOVX A, @R1
	MOV B, A
	MOVX A, @R0 
	MOVX @R1, A
	MOV A, B
	MOVX @R0, A

OUT1:	INC R1 
	
	DJNZ R7, LOOP2
	
	INC R0
	DJNZ R6,LOOP1
	
	
;ODD AND EVEN PARITY SUM FINDER

	MOV R0, #ARRAY_ADDR
	MOV R5, #ELEMENT_COUNT
	
	MOV R4, #0 ;ODD PARITY
	MOV R3, #0 ;EVEN PARITY
	
LOOP3:	MOVX A, @R0
	MOV B, #8
	
	MOV R1, #0 
LOOP4:	RLC A
	JC ONE
	JMP ZERO
	
ONE:	INC R1
ZERO:	DJNZ B,LOOP4
	
	MOV A, R1
	RRC A
	JC ODD
	JMP EVEN
	
ODD:	MOVX A, @R0
	ADD A, R4
	MOV R4, A
	JMP OUT2
	
EVEN:	MOVX A, @R0
	ADD A, R3
	MOV R3, A
	
	
OUT2:	INC R0
	DJNZ R5, LOOP3
EXIT:	END