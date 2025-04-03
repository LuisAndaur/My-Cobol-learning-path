      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "CALCULADORA-CON-EVALUATE".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  opciones        PIC X VALUE SPACES.
           88  sumar       VALUE "+".
           88  restar      VALUE "-".
           88  multiplicar VALUE "*".
           88  dividir     VALUE "/".
           88  salir       VALUE "s".

       77  num1            PIC 999 VALUE ZEROS.
       77  num2            PIC 999 VALUE ZEROS.

       77  resultado       PIC S999999 VALUE ZEROS.

       PROCEDURE DIVISION.

           PERFORM SELECCIONAR-OPERACION.

           STOP RUN.
      * Presenta el menu al usuario y solicita una opcion.
       SELECCIONAR-OPERACION.
           DISPLAY "Elige una operacion:"
           DISPLAY "01-Sumar (+)"
           DISPLAY "02-Restar (-)"
           DISPLAY "03-Multiplicar (*)"
           DISPLAY "04-Dividir (/)"
           DISPLAY "05-Salir (s)"
           ACCEPT opciones

           PERFORM BUCLE.

      * Bucle infinito while
       BUCLE.
           EVALUATE opciones
               WHEN "+"
                   PERFORM SUMA
               WHEN "-"
                   PERFORM RESTA
               WHEN "*"
                   PERFORM MULTIPLICACION
               WHEN "/"
                   PERFORM DIVIDIENDO
               WHEN "s"
                   DISPLAY "Saliendo del programa"
               WHEN OTHER
                   DISPLAY "Opcion invalida. Intente de nuevo."
                   PERFORM SELECCIONAR-OPERACION
           END-EVALUATE.

       SUMA.
           DISPLAY "Has elegido SUMAR!"
           PERFORM SOLICITAR-NUMEROS
           ADD num1 TO num2 GIVING resultado
           DISPLAY "El resultado de la suma es: " resultado
           PERFORM SELECCIONAR-OPERACION.

       RESTA.
           DISPLAY "Has elegido RESTAR!"
           PERFORM SOLICITAR-NUMEROS
           SUBTRACT num1 FROM num2 GIVING resultado
           DISPLAY "El resultado de la resta es: " resultado
           PERFORM SELECCIONAR-OPERACION.

       MULTIPLICACION.
           DISPLAY "Has elegido MULTIPLICAR!"
           PERFORM SOLICITAR-NUMEROS
           MULTIPLY num1 BY num2 GIVING resultado
           DISPLAY "El resultado de la multiplicacion es: " resultado
           PERFORM SELECCIONAR-OPERACION.

       DIVIDIENDO.
           DISPLAY "Has elegido DIVIDIR!"
           PERFORM SOLICITAR-NUMEROS
           DIVIDE num1 BY num2 GIVING resultado
           DISPLAY "El resultado de la division es: " resultado
           PERFORM SELECCIONAR-OPERACION.

       SOLICITAR-NUMEROS.
           DISPLAY "Ingrese valor 1:"
           ACCEPT num1

           DISPLAY "Ingrese valor 2:"
           ACCEPT num2.

       END PROGRAM "CALCULADORA-CON-EVALUATE".
