      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "LOTE-PRUEBA-DIGITO-DE-CONTROL".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  input-variable      PIC X(100) VALUE SPACES.
       01  char-array.
           05  char-entrada    PIC X OCCURS 100 TIMES.
       77  i                   PIC 99 VALUE ZERO.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingresa una variable:".
            ACCEPT input-variable.

            MOVE input-variable TO char-array.
            DISPLAY "Variable ingresada: " input-variable.

            PERFORM VARYING i FROM 1 BY 1 UNTIL char-entrada(i) = SPACE
               DISPLAY "Char-array("i") = " char-entrada(i)
            END-PERFORM.
            STOP RUN.
       END PROGRAM LOTE-PRUEBA-DIGITO-DE-CONTROL.
