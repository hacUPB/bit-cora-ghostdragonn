@250
D=A 
@200
D=M 

// RAM[3]=250
@200
D=M
@3
M=D

// ram[2]=ram[0]+ram[1]+17
@0
D=M 
@1
D=D+M 
@17
D=D+A 
@2
M=D 

//

@16384
D = A
@16
M = D
@50
D=A
@16
M=D+M

