      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "BISIESTO".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  ANIO        PIC 9(4) VALUE 0.
       77  RESTO4      PIC 9(2) VALUE 0.
       77  RESTO100    PIC 9(2) VALUE 0.
       77  RESTO400    PIC 9(2) VALUE 0.
       77  COCIENTE    PIC 9(4) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese un año: ".
           ACCEPT ANIO.
           DIVIDE ANIO BY 400 GIVING COCIENTE REMAINDER RESTO400.
           DIVIDE ANIO BY 100 GIVING COCIENTE REMAINDER RESTO100.
           DIVIDE ANIO BY 4 GIVING COCIENTE REMAINDER RESTO4.
      *
      * Un año es bisiesto si es multiplo de 4 o 400 y si no es
      * multiplo de de 100

           IF (RESTO4 = 0 OR RESTO400 = 0) AND ( RESTO100 NOT = 0)
               DISPLAY "El año es BISIESTO!"
           ELSE
               DISPLAY "El año NO es BISIESTO!"
      *         DISPLAY "RESTO4 = " RESTO4
      *                 " - RESTO400 = " RESTO400
      *                 " - RESTO100 = " RESTO100
           END-IF.

           STOP RUN.
       END PROGRAM "BISIESTO".
