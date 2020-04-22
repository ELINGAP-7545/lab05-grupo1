Laboratorio 05
==============

-   Jaider Neira

-   Sergio Obando

-   Julian Diaz

Laboratorio 05
==============

Unidad de suma, resta, multiplicación, división y visualización BCD
===================================================================

Introducción
------------

Se realiza la implementación de las operaciones lógicas (suma, resta,
multiplicación, división) en una unidad aritmética lógica (ALU) correspondiente
a la FPGA para su simulación y visualización, para lograr esto se realizan los
siguientes pasos:

Descripción
-----------

La unidad aritmética, es la que cuenta con componentes para realizar operaciones
aritméticas; cada operación aritmética es ejecutada de acuerdo al código de la
operación.

Caja funcional del sumador
--------------------------

![caja_funcinal suma](media/6a08187274ca38091cea515badf22928.shtml)

caja_funcinal suma

caja_funcinal suma

Caja funcional del restador
---------------------------

![cajarestador](media/08c78fad3ba32d0f99ffb884fb03a4cc.shtml)

cajarestador

cajarestador

Caja funcional del multiplicador
--------------------------------

![caja_funcinal suma](media/8f9848a65562cefddfbe44ee93e9c27b.shtml)

caja_funcinal suma

caja_funcinal suma

Como ejercicio académico, se propone construye una unidad con 4 operaciones
aritméticas: suma, resta, multiplicación y división. de igual manera, el
resultados se visualiza en los display de siete segmentos. El flujo de datos y
la selección de la operación se realiza acorde a la señal opcode, y segun la
siguiente tabla:

opcode \| operación enteros positivos 00\| suma 01\| resta 10\| multiplicación
11\| división

Por lo tanto, la unidad debe contar con:

1.  Los dos puertos de entrada A y B. cada uno de 3 bits.

2.  La señal `opcode` de dos bits, para configurar la operación que se realiza
    con los datos de `portA` y `portB`.

3.  La a visualización de unidad debe tener las salidas de los 4 ánodos, `An` y
    las 7 señales de los cátodos, `sseg`.

4.  Para las FSM y las visualización dinámica, se debe incluir la señal de `clk`
    de entrada.

5.  la señal de reset del sistema

Diagrama de caja negra
----------------------

Según las especificaciones anteriormente descrita, la caja funcional de la
unidad aritmética propuesta es:

![caja negra](media/7798f28eec53e6f825550d7154884f99.shtml)

caja negra

caja negra

Diagrama estructural
--------------------

![estructural](media/3d4a81a0c9bfc210028294493416fbc8.shtml)

estructural

estructural

El diagrama estructural, se soporta en los componentes desarrollados en los
anteriores laboratorios. De esta manera, tanto el sumador, el multiplicador y el
Display, son tomados de los lab2, lab5 y lab4 respectivamente. Adicional a la
estructura de cada operación se encuentra el decodificador y el multiplexador.

Entregables
-----------

1.  Definir el diagrama estructurar interno de cada bloque funcionar

2.  Descargar la estructura propuesta de la Unidad Aritmética del paquete de
    trabajo [WP05](https://classroom.github.com/g/dHrBou9a) Este proyecto cuenta
    con el archivo `alu.v` y, tiene la carpeta `src` que cuenta con las 5
    carpetas de cada componente.

3.  Implementar `alu.v` en la FPGA, y comprobar el funcionamiento de la suma la
    multiplicación y la visualización

4.  Incluir el HDL para le divisor realizado en el ejercicio anterior, en la
    carpeta `src/divisor` y, adicione los archivos e instanciar el bloque
    divisor.

5.  Diseñar el bloque restador, adicionar dicho bloque a la respectiva carpeta e
    instanciar el modulo en `alu.v`.

6.  Realizar el testbench del bloque alu.

7.  implementar el sistema completo en la FPGA remota

8.  hacer la documentación respectiva en el archivo README
