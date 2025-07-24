// Actividad 5
// 1. Carga en D el valor 1978.
@1987
D=A
// 2. Guarda en la posición 100 de la RAM el número 69.

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

@100
D=M
@100
D=D-A
@20
D;JLT

//8. Considera el siguiente programa:

    @var1
    D = M
    @var2
    D = D + M
    @var3
    M = D
    
    - ¿Qué hace este programa?

    Carga el contenido de la variable var1 a D, le suma el contenido de var2 y guarda el resultado en la variable var3.

    - En qué posición de la memoria está `var1`, `var2` y `var3`? ¿Por qué en esas posiciones?

    @var1 = RAM[16]

    @var2 = RAM[17]

    @var3 = RAM[18]

    RAM[16+] : espacio libre para variables nuevas, es por esto que sus ubicaciones son 16, 17 y 18

//9.
    //- ¿Qué hace este programa?

    //Realiza las siguientes acciones:

    //-Inicializa la variable i en 1.

    //-Inicializa la variable sum en 0.

    //-Suma i a sum.

Incrementa i en 1.
    - ¿En qué parte de la memoria RAM está la variable `i` y `sum`? ¿Por qué en esas posiciones?
    - Optimiza esta parte del código para que use solo dos instrucciones:
        
        ```nasm
        // i = i + 1
        @i
        D=M+1
        @i
        M=D
        ```
        
10. Las posiciones de memoria RAM de 0 a 15 tienen los nombres simbólico `R0` a `R15`. Escribe un programa en lenguaje ensamblador que guarde en `R1` la operación `2 * R0`.
11. Considera el siguiente programa:
    
    ```nasm
    i = 1000
    LOOP:
    if (i == 0) goto CONT
    i = i - 1
    goto LOOP
    CONT:
    ```
    
    La traducción a lenguaje ensamblador del programa anterior es:
    
    ```nasm
    // i = 1000
    @1000
    D=A
    @i
    M=D
    (LOOP)
    // if (i == 0) goto CONT
    @i
    D=M
    @CONT
    D;JEQ
    // i = i - 1
    @i
    M=M-1
    // goto LOOP
    @LOOP
    0;JMP
    (CONT)
    ```
    
    - ¿Qué hace este programa?
