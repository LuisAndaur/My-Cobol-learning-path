      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "EJEMPLO-PERFORM-UNTIL".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CONTADOR    PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.

           PERFORM UNTIL CONTADOR > 10
               DISPLAY "Iteracion: " CONTADOR
               ADD 1 TO CONTADOR
           END-PERFORM.

           STOP RUN.

       END PROGRAM "EJEMPLO-PERFORM-UNTIL".
