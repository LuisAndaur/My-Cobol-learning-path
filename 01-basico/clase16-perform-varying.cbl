      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "EJEMPLO-PERFORM-VARYING".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CONTADOR    PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.

           PERFORM VARYING CONTADOR FROM 1 BY 1 UNTIL CONTADOR > 10
               DISPLAY "Iteracion: " CONTADOR
           END-PERFORM.

           DISPLAY "Finalizado".

           STOP RUN.

       END PROGRAM "EJEMPLO-PERFORM-VARYING".
