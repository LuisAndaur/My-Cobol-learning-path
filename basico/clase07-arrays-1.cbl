      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "ARRAYS1".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  I       PIC S9 VALUE 0.
       01  NUMEROS OCCURS 5 TIMES.
           02  NUMERO  PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *    Asignacion de valores a cada uno de los elementos del array
           MOVE 10 TO NUMEROS(1).
           MOVE 20 TO NUMEROS(2).
           MOVE 30 TO NUMEROS(3).
           MOVE 40 TO NUMEROS(4).
           MOVE 50 TO NUMEROS(5).

           BEGIN.
               DISPLAY "Ingrese un numero de indice del array: "
               DISPLAY "Entre 1 y 5"
               ACCEPT I.

                   IF I > 0 AND I < 6
                   DISPLAY "El dato en la posicion " I " es: " NUMERO(I)
               ELSE
                   DISPLAY "El indice " I " NO EXISTE!"
                   DISPLAY "Debe ser entre 1 y 5"
           GO TO BEGIN.

           STOP RUN.
       END PROGRAM "ARRAYS1".
