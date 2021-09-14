ORG 00H 

;MEMORY SPACE WHERE ALL THE FIBONACCI NUMBERS ARE STORED 
MOV R0, #40H
;MOVE NUMBER OF FIBONACCI NUMBERS TO BE GENERATED 
MOV 20H, #10 
MOV R3, 20H
MOV R1, #00H 
;MOVE THE FIRST NUMBER IN THE MEMORY SPACE 
MOV @R0, #0H 
INC R0 
;MOVE THE SECOND NUMBER IN THE MEMORY SPACE 
MOV @R0, #01H 
MOV R2, #01H 
DEC R3 
DEC R3 

LABEL2: INC R0 
        MOV A, R1 
        ;ADD THE PREVIOUS TWO NUMBERS 
        ADD A, R2 
        ;STORE THE FIBONACCI NUMBER IN THE MEMORY SPACE 
        MOV @R0, A 
        ;EXCHANGE N STORE THE PRECEDING TWO NUMBERS IN R1 
        MOV B, R2 
        MOV R1, B 
        MOV R2, A 
        ;KEEP THE TRACK OF COUNTER 
        DJNZ R3, LABEL2
        
END