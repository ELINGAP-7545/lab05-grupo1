# Laboratorio 05

* Jaider Neira
* Sergio Obando
* Julian Diaz

# Unidad de suma, resta, multiplicación, división y visualización BCD

## Introducción

Se realiza la implementación de las operaciones lógicas (suma, resta, multiplicación, división) en una unidad aritmética lógica (ALU) correspondiente a la FPGA para su simulación y visualización, para lograr esto se realizan los siguientes pasos:

## Descripción 
La unidad aritmética, es la que cuenta con componentes para realizar operaciones aritméticas; cada operación aritmética es ejecutada de acuerdo al código de la operación.
 
A continuación se muestra los bloques que componen la unidad aritmética:
 
## **Caja funcional del sumador**
![caja_funcinal suma](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/caja_funcinal%20suma.JPG)
## **Diagrama estructural del sumador de 4 bits**
![suma4](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/suma4.jpeg)
## **Logica combinacional del sumador**
![suma](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/suma.JPG)
 
## **Caja funcional del restador**
![cajarestador](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/cajarestador.png)

## **Caja funcional del multiplicador**
![caja_funcinal multiplicacion](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/caja_funcinal%20multiplicacion.JPG)
## **Diagrama estructural del multiplicador**
![multiplicador](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/multiplicador.jpeg)

## **Caja funcional del display 7 segmentos**
![cajabcd](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/cajabcd.JPG)
## **Logica combinacional del display**
![display](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/display.JPG)

La caja funcional además de la salida de 7 segmentos G_HEX contiene una salida An, esta salida es para conectar eventualmente el ánodo del display y poder hacer visualización dinámica, cuando se tiene más de un display conectado.

## **Caja funcional del multiplexor**
![cajamux](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/cajamux.png)
## **Logica combinacional del multiplexor**
![mux](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/mux.JPG)

## **Caja funcional del decodificador**
![cajadeco](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/cajadeco.png)
## **Logica combinacional del decodificador**
![deco](https://github.com/ELINGAP-7545/lab05-grupo1/blob/master/fig/deco.JPG)


Como ejercicio académico, se propone construye una unidad con 4 operaciones aritméticas: suma, resta, multiplicación y división.  de igual manera, el resultados se visualiza en los display de siete segmentos. El flujo de datos y la selección de la operación se realiza acorde a la señal opcode, y según la siguiente tabla:


opcode | operación  enteros positivos
00| suma
01| resta 
10|  multiplicación
11| división 

Por lo tanto, la unidad debe contar con:

1. Los dos puertos de entrada A y B. cada uno de  3 bits.
2. La señal `opcode` de dos bits, para configurar la operacion que se realiza con los datos de `portA` y `portB`.
3. La a visualizacion de unidad debe tener las salidas de los 4 ánodos, `An`  y las 7 señales de los anodos, `sseg`.
4. Para las FSM  y las visualizacion dinámica, se debe incluir la señal de `clk` de entrada.
5. la señal de reset del sistema

## Diagrama de caja negra

Según las especificaciones anteriormente descrita, la caja funcional de la unidad aritmetica propuesta es:

![caja negra](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/cajanegra.png)


## Diagrama estructural

![estructural](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/diagraEstructural.png)


El diagrama estructural, se soporta en los componentes desarrollados en los anteriores laboratorios. De esta manera,  tanto el sumador, el multiplicador  y el Display, son tomados de los lab2, lab5 y lab4  respectivamente. Adicional a la estructura de cada operación se encuentra el decodificador  y el multiplexador.

## Entregables

1. Definir el diagrama estructurar interno de cada bloque funcionar 
2. Descargar la estructura propuesta de la  Unidad Aritmética del paquete de trabajo [WP05](https://classroom.github.com/g/dHrBou9a) Este proyecto cuenta con el archivo `alu.v` y, tiene la carpeta `src` que cuenta con las 5 carpetas de cada componente.
3. Implementar `alu.v` en la FPGA, y  comprobar el funcionamiento  de la suma la multiplicación y la visualización
4. Incluir el  HDL para le divisor  realizado en el ejercicio anterior, en la carpeta `src/divisor`  y, adicione los archivos e instanciar el bloque divisor.
5. Diseñar el bloque restador, adicionar dicho bloque a la respectiva carpeta e instanciar el modulo en `alu.v`.
6. Realizar el testbench del bloque alu.
7. implementar el sistema completo en la FPGA remota
8. hacer la documentación respectiva en el archivo README
  

