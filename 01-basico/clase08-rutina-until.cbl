      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "RUTINA1".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  I       PIC 9 VALUE 0.
       01  NUMEROS OCCURS 5 TIMES.
           02  NUMERO  PIC 9(2).

       PROCEDURE DIVISION.
       BEGIN.

      *    Asignacion de valores a cada uno de los elementos del array
           MOVE 10 TO NUMEROS(1).
           MOVE 20 TO NUMEROS(2).
           MOVE 30 TO NUMEROS(3).
           MOVE 40 TO NUMEROS(4).
           MOVE 50 TO NUMEROS(5).
           DISPLAY "Los elementos del array son: "

      *    Recorremos el array con un ciclo "PERFORM" y mostramos los valores
      *    PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
           PERFORM UNTIL I = 5
               ADD 1 TO I
               DISPLAY NUMERO(I)
           END-PERFORM.

           STOP RUN.
       END PROGRAM "RUTINA1".
