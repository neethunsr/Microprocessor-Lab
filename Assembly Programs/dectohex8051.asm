ORG 00H 
MOV 20H, #66h ;INPUT DECIMAL NUMBER 

MOV R0, 20H
MOV R1, #00H 

LOOP1:  MOV A, R0 
        JZ EXIT
        DEC R0 
        INC R1
        MOV B, #10H
        DIV AB 
        MOV A, B
        JNZ LOOP1
        MOV A, R0
        SUBB A, #06H 
        MOV R0, A
        JMP LOOP1 

EXIT:   END