# Interrogación 2 - IIC2343 2020'1

Esta evaluación es ESTRICTAMENTE INDIVIDUAL.

Hora inicio: 10:00 am

Tienen 36 horas para entregar.


**1 PDF por pregunta.**


## Pregunta 3

IEEE753 de 32 bits.

Para el valor:

`3 * 2 ** 5`

`11 * 10 ** 101` <- notación científica en binario

Que puede ser escrito como:

`1,1 * 10 ** 110`


No es que no se pueda sumar `2**31 + 1`, es que la suma no cambia el valor.

C hace la suma como indica la convención IEEE754.

## Pregunta 4

I, II y III son instrucciones independientes. Tienen que determinar si cada una de ellas puede ser ejecutada en un solo ciclo.

En el caso de la III, son dos operaciones que ocurren simultáneamente.

Los límites de lo que podemos hacer en un solo ciclo están marcados por lo que podemos hacer con un solo flanco de subida.

## Pregunta 5

La memoria de datos tiene una RAM que se puede ver como un bloque de registros todos juntos y ciertos circuitos a su alrededor (de la RAM) donde pasan "cosas".

Tienen que determinar esos circuitos aledaños a la RAM y su funcionamiento.

La memoria de datos tiene un DataIn que se corresponde al dato de entrada, un DataOut que se corresponde al dato de salida, una señal W que indica si estamos escribiendo o no y un Adress, que indica la dirección de memoria a leer o escribir.

Pueden asumir que la RAM es un bloque de registros, sus entradas y sus salidas son las que se corresponden a los propios registros.
