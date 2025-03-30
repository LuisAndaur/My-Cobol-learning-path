      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "OPERACIONES".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM1 PIC 9(4).
           01 NUM2 PIC 9(4).
           01 RESULT PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese un numero 1: ".
           ACCEPT NUM1.
           DISPLAY "El numero 1 es: ", NUM1.
      *
           DISPLAY "Ingrese un numero 2: ".
           ACCEPT NUM2.
           DISPLAY "El numero 2 es: ", NUM2.
      *
      * Sumo el num1 y el num2 (NUM1+NUM2) dejo el resultado en RESULT.
           ADD NUM1, NUM2 GIVING RESULT.
           DISPLAY "El resultado de la suma es: ", RESULT.
      *
      * Resto el num1 y el num2 (NUM1+NUM2) dejo el resultado en RESULT.
           SUBTRACT NUM1 FROM NUM2 GIVING RESULT.
           DISPLAY "El resultado de la resta es: ", RESULT.

      *
      * Multiplico el num1 y el num2 (NUM1+NUM2) dejo el resultado en RESULT.
           MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           DISPLAY "El resultado de la multiplicacion es: ", RESULT.

      *
      * Divido el num1 y el num2 (NUM1+NUM2) dejo el resultado en RESULT.
           DIVIDE NUM1 BY NUM2 GIVING RESULT.
           DISPLAY "El resultado de la division es: ", RESULT.

      *
      * Calculo RESULT = (NUM1*NUM2) / NUM2.
           COMPUTE RESULT = (NUM1 * NUM2) / NUM2.
           DISPLAY "El resultado del calculo es: ", RESULT.

           IF RESULT > 9 DISPLAY "Mayor a 9"
               ELSE
                   DISPLAY "Menor o igual a 9".

           STOP RUN.
       END PROGRAM "OPERACIONES".
