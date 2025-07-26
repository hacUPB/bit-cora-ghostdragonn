//Actividad 5

//1. Carga en D el valor 1978.

@1978
D=A

//2. Guarda en la posición 100 de la RAM el número 69.

@69 
D=A 
@100 
M=D 

//3. Guarda en la posición 200 de la RAM el contenido de la posición 24 de la RAM

@90
D=A 
@24
M=D
@200

//4. Lee lo que hay en la posición 100 de la RAM, resta 15 y guarda el resultado en la posición 100 de la RAM.

M=D 
@15
D=A 
@100
M=M-D 

//5. Suma el contenido de la posición 0 de la RAM, el contenido de la posición 1 de la RAM y con la constante 69. Guarda el resultado en la posición 2 de la RAM.

// Para la prueba, añadi manualmente los valores a la posicion 1 y 0.

@0 
D=M 
@1
D=D+M 
@69
D=D+A 
@2
M=D 

//6. Si el valor almacenado en D es igual a 0 salta a la posición 100 de la ROM.

@100
D;JEQ

//7. Si el valor almacenado en la posición 100 de la RAM es menor a 100 salta a la posición 20 de la ROM.

// Para la prueba, añadi manualmente el valor de 30 en el emulador.

@100
D=M
@100
D=D-A
@20
D;JLT

//8. Considera el siguiente programa:

//¿Qué hace este programa?

//Carga el contenido de la variable var1 a D, le suma el contenido de var2 y guarda el resultado en la variable var3.

//- En qué posición de la memoria está `var1`, `var2` y `var3`? ¿Por qué en esas posiciones?

//@var1 = RAM[16]
//@var2 = RAM[17]
//@var3 = RAM[18]

//RAM[16+] : espacio libre para variables nuevas, es por esto que sus ubicaciones son 16, 17 y 18

//9.
//¿Qué hace este programa?

//Realiza las siguientes acciones:
//-Inicializa la variable i en 1.
//-Inicializa la variable sum en 0.
//-Suma i a sum.
//-Incrementa i en 1.

//¿En qué parte de la memoria RAM está la variable `i` y `sum`? ¿Por qué en esas posiciones?

//Como en el caso anterior, estas variables son símbolos nuevos, por tanto:

@i será asignado a RAM[16] y @sum a RAM[17]

//- Optimiza esta parte del código para que use solo dos instrucciones:
        
//RTA: 
@i
M=M+1

        
//10. Las posiciones de memoria RAM de 0 a 15 tienen los nombres simbólico `R0` a `R15`. Escribe un programa en lenguaje ensamblador que guarde en `R1` la operación `2 * R0`.

// Para la prueba, añadi manualmente los valores a la posicion 0.

@R0
D=M
@R0
D=D+M
@R1
M=D

//11. Considera el siguiente programa:
    
//¿Qué hace este programa?

//Cuenta hacia atrás desde 1000 hasta 0, es un bucle que decrementa i hasta que llega a 0 y termina.

//¿En qué memoria está almacenada la variable i? ¿En qué dirección de esa memoria?

//Como es un símbolo definido por el usuario, el ensamblador la asignará automáticamente en la RAM a partir de la dirección 16 (si no se han declarado más variables antes).

//¿En qué memoria y en qué dirección de memoria está almacenado el comentario //i = 1000?

//Los comentarios no se almacenan en la memoria, son ignorados por el ensamblador y no ocupan espacio en ROM ni RAM. Son usados como apoyo.

//¿Cuál es la primera instrucción del programa anterior? ¿En qué memoria y en qué dirección de memoria está almacenada esa instrucción?

La primera instrucción es @1000 y está en la  direccion ROM[0]

//¿Qué son CONT y LOOP?

Son etiquetas que representan puntos de salto en la ROM, pero especificamente:
//LOOP: Marca el inicio de un bucle.

//CONT: Marca un punto de salida del bucle o de continuidad del programa.

//¿Cuál es la diferencia entre los símbolos i y CONT?

//i: Es una variable, ubicada en RAM[16+] que guarda un valor que cambia
//CONT: Es una tiqueta de código, ubicada en ROM[x] que marca una posición del código para saltar (jump)

//12. Implemente en ensamblador:

// Para la prueba, añadi manualmente los valores.

RTA:

@R1
D=M
@R2
D=D+M
@69
D=D+A
@R4
M=D

​
//13. Implementa en ensamblador:

// Para la prueba, añadi manualmente los valores.

//RTA: 
@R0
D=M
@ELSE
D;JLT
@R1
M=1
@CONT
0;JMP

(ELSE)
@R1
M=-1

(CONT)
(LOOP)
@LOOP
0;JMP


​
14 //Implementa en ensamblador:

// Para la prueba, añadi manualmente los valores.

//RTA:

@R1
D=M
@R4
M=D

//15. Implementa en ensamblador el siguiente problema. En la posición R0 está almacenada la dirección inicial de una región de memoria. En la posición R1 está almacenado el tamaño de la región de memoria. Almacena un -1 en esa región de memoria.

// Para probarlo añadi manualmente los valores en la RAM

@R0
D=M
@ptr
M=D       
@R1
D=M
@count
M=D        

(LOOP)
@count
D=M
@END
D;JEQ      
@ptr
A=M        
M=-1      

@ptr
M=M+1     

@count
M=M-1     

@LOOP
0;JMP

(END)


//16. Implementa en lenguaje ensamblador el siguiente programa:
    
//¿Qué hace este programa?

//Crea un arreglo de 10 enteros llamado arr que inicializa una variable sum en 0 y suma los 10 elementos del arreglo arr y guarda el resultado en sum.

//¿Cuál es la dirección base de arr en la memoria RAM?

//arr se ubica en RAM[16], porque es la primera variable simbólica creada.

//¿Cuál es la dirección base de sum en la memoria RAM y por qué?

//sum se ubica en RAM[26], porque arr[0] a arr[9] ocupan RAM[16] a RAM[25], y sum se declara después.

//¿Cuál es la dirección base de j en la memoria RAM y por qué?

//j se ubica en RAM[27], porque es la siguiente variable simbólica declarada después de sum.	

//17. Implementa en lenguaje ensamblador:

// Para la prueba, añadi manualmente los valores.

//RTA:
@7
D=D-A
@69
D;JEQ

    
//18. Utiliza [esta](https://nand2tetris.github.io/web-ide/bitmap) herramienta para dibujar un bitmap en la pantalla.

//[Enlace a mibitmap](https://nand2tetris.github.io/web-ide/bitmap#accept)

//Código
(draw)
	// put bitmap location value in R12
	// put code return address in R13
	@SCREEN
	D=A
	@R12
	AD=D+M
	// row 2
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=1
	// row 3
	D=A // D holds previous addr
	@31
	AD=D+A
	@6016 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 4
	D=A // D holds previous addr
	@31
	AD=D+A
	@22592 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@4 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 5
	D=A // D holds previous addr
	@31
	AD=D+A
	@20544 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 6
	D=A // D holds previous addr
	@31
	AD=D+A
	@24256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 7
	D=A // D holds previous addr
	@31
	AD=D+A
	@16704 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@17 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 8
	D=A // D holds previous addr
	@31
	AD=D+A
	@32128 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@18 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 9
	D=A // D holds previous addr
	@31
	AD=D+A
	@31616 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@16 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 10
	D=A // D holds previous addr
	@31
	AD=D+A
	@2304 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@17 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 11
	D=A // D holds previous addr
	@31
	AD=D+A
	@512 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@31 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 12
	D=A // D holds previous addr
	@31
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@96 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 13
	D=A // D holds previous addr
	@31
	AD=D+A
	@6144 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@128 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 14
	D=A // D holds previous addr
	@31
	AD=D+A
	@4096 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 15
	D=A // D holds previous addr
	@31
	AD=D+A
	@3008 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 16
	D=A // D holds previous addr
	@31
	AD=D+A
	@3120 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@512 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 17
	D=A // D holds previous addr
	@31
	AD=D+A
	@2056 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@512 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 18
	D=A // D holds previous addr
	@31
	AD=D+A
	@2052 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@536 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 19
	D=A // D holds previous addr
	@31
	AD=D+A
	@2050 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1048 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 20
	D=A // D holds previous addr
	@31
	AD=D+A
	@2050 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 21
	D=A // D holds previous addr
	@31
	AD=D+A
	@4097 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 22
	D=A // D holds previous addr
	@31
	AD=D+A
	@8193 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@512 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 23
	D=A // D holds previous addr
	@31
	AD=D+A
	@16385 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 24
	D=A // D holds previous addr
	@31
	AD=D+A
	@32767 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 25
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@382 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 26
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@608 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 27
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@640 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 28
	D=A // D holds previous addr
	@31
	AD=D+A
	@2 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 29
	D=A // D holds previous addr
	@31
	AD=D+A
	@12 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@112 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 30
	D=A // D holds previous addr
	@31
	AD=D+A
	@4 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@31 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 31
	D=A // D holds previous addr
	@31
	AD=D+A
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@32 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 32
	D=A // D holds previous addr
	@31
	AD=D+A
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@31 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// return
	@R13
	A=M
	D;JMP


//19. Analiza el siguiente programa en lenguaje de máquina:

//RTA: 
//Traducción:

@16384
D=A
@16
D=D+A
@24576
D=A
@19
D=D-A
@16
D=A
@16384
D=D|A
@4
D=D-A
@16
M=D
D=0
@4
0;JMP

//¿Qué hace este programa?

//Este programa borra la pantalla.
//Va recorriendo poco a poco cada espacio de memoria donde se guarda lo que se muestra en la pantalla, y en cada uno pone un 0, lo que hace que todo desaparezca.
//Ese proceso lo repite muchas veces, como si limpiara la pantalla parte por parte hasta dejarla en blanco.
//20. Implementa un programa en lenguaje ensamblador que dibuje el bitmap que diseñaste en la pantalla solo si se presiona la tecla “d”.

@KBD        // Dirección del teclado
D=M         // D = valor de la tecla presionada
@100        // ASCII de 'd'
D=D-A       // D = D - 100
@draw
D;JEQ       // Si D == 0 (tecla 'd' presionada), salta a (draw)
@END
0;JMP       // Si no, salta al final (no dibuja)
