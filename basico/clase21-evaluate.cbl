      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "EVALUATE".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  dia-semana   PIC 9.
       01  nombre-dia   PIC X(10).

       PROCEDURE DIVISION.

           DISPLAY "Ingrese un numero de dia de la semana (1-7):".
           ACCEPT dia-semana.

           EVALUATE dia-semana
               WHEN 1
                   MOVE "LUNES" TO nombre-dia
               WHEN 2
                   MOVE "MARTES" TO nombre-dia
               WHEN 3
                   MOVE "MIERCOLES" TO nombre-dia
               WHEN 4
                   MOVE "JUEVES" TO nombre-dia
               WHEN 5
                   MOVE "VIERNES" TO nombre-dia
               WHEN 6
                   MOVE "SABADO" TO nombre-dia
               WHEN 7
                   MOVE "DOMINGO" TO nombre-dia
               WHEN OTHER
                   MOVE "ERROR" TO nombre-dia
           END-EVALUATE.

           DISPLAY "Dia del numero ingresado es: " nombre-dia.

           STOP RUN.

       END PROGRAM "EVALUATE".
