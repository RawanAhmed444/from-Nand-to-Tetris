// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
  
@2 
M=0     //MAKE RAM[2]=0

@0
D=M
@END
D;JEQ     //IF RAM[0] IS ZERO GOTO END

@1
D=M
@END
D;JEQ     //IF RAM[1] IS ZERO GOTO END

(LOOP)
@1 	
D=M 	

@2 	
M=D+M     // RAM[2]=RAM[2]+RAM[1]	

@0 	
M=M-1     //LOOP ON FIRST RAM

D=M 	
@LOOP 	
D;JGT     //IF RAM[0]>=0 GOTO LOOP (STILL SUMMATE THE RAM[1])


(END)
@END
0;JMP 
