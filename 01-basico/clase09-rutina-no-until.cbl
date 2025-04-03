      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "RUTINA2".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  MY-ARRAY.
       02  MY-ELEMENTS OCCURS 5 TIMES.
           03  ELEMENT  PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 10 TO ELEMENT(1)
           MOVE 20 TO ELEMENT(2)
           MOVE 30 TO ELEMENT(3)
           MOVE 40 TO ELEMENT(4)
           MOVE 50 TO ELEMENT(5)

           DISPLAY "Array ELEMENTOS: "
           PERFORM DISPLAY-ELEMENTS

           STOP RUN.

       DISPLAY-ELEMENTS.
           DISPLAY "Elemento 1: " ELEMENT(1)
           DISPLAY "Elemento 2: " ELEMENT(2)
           DISPLAY "Elemento 3: " ELEMENT(3)
           DISPLAY "Elemento 4: " ELEMENT(4)
           DISPLAY "Elemento 5: " ELEMENT(5).

       END PROGRAM "RUTINA2".
