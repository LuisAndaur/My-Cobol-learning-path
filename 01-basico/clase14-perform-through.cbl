      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "EJEMPLO-PERFORM-THROUGH".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CONTADOR    PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.

           PERFORM 100-LOOP THRU 100-EXIT.

           DISPLAY "Fin programa".

           STOP RUN.

       100-LOOP.
           DISPLAY "Iteracion 1: " CONTADOR.
           ADD 1 TO CONTADOR.
           DISPLAY "Iteracion 2: " CONTADOR.
           SUBTRACT 1 FROM CONTADOR.
           DISPLAY "Iteracion 3: " CONTADOR.

       100-EXIT.
           DISPLAY "Finalizado iteracion".

       END PROGRAM "EJEMPLO-PERFORM-THROUGH".
