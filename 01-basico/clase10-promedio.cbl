      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "RUTINA3-PROMEDIO".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  MY-ARRAY.
       02  MY-ELEMENTS OCCURS 5 TIMES.
           03  ELEMENT  PIC 9(2).
       02  I           PIC 9.
       02  DIMENSION   PIC 9    VALUE 0.
       02  AUX         PIC 9(2) VALUE 0.
       02  SUMA-TOTAL  PIC 9(2) VALUE 0.
       02  AVG         PIC 9(2)V9(3) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM SOLICITAR-INDICE.
           PERFORM CARGAR-ARRAY.
           PERFORM SACAR-PROMEDIO.

           STOP RUN.

       SOLICITAR-INDICE.
           DISPLAY "Ingrese la dimension del array: "
           DISPLAY "(entre 1 y 5)"
           ACCEPT DIMENSION.

       CARGAR-ARRAY.
           PERFORM UNTIL I = DIMENSION
               ADD 1 TO I
               DISPLAY "Ingrese el valor " I
               ACCEPT AUX
               MOVE AUX TO ELEMENT(I)
           END-PERFORM.


       SACAR-PROMEDIO.
           MOVE 0 TO I
           PERFORM UNTIL I = DIMENSION
               ADD 1 TO I
               ADD ELEMENT(I), SUMA-TOTAL GIVING SUMA-TOTAL
           END-PERFORM

           DISPLAY "SUMA ES es: ", SUMA-TOTAL.

           DIVIDE SUMA-TOTAL BY DIMENSION GIVING AVG
           DISPLAY "El promedio es: ", AVG.

       END PROGRAM "RUTINA3-PROMEDIO".
