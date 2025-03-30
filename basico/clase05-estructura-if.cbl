      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "ESTRUCTURA1".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  NUMERO   PIC S9(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese un numero: ".
           ACCEPT NUMERO.

           IF NUMERO < 0
               DISPLAY "El numero es NEGATIVO!"
           ELSE
               IF NUMERO > 0
                   DISPLAY "El numero es POSITIVO!"
               ELSE
                   DISPLAY "El numero es CERO!"
           END-IF.

           STOP RUN.
       END PROGRAM "ESTRUCTURA1".
