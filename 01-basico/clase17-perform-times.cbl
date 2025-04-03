      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "EJEMPLO-PERFORM-TIMES".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CONTADOR    PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.

           PERFORM 5 TIMES
               DISPLAY "Iteracion: "
           END-PERFORM.

           DISPLAY "Finalizado".

           STOP RUN.

       END PROGRAM "EJEMPLO-PERFORM-TIMES".
