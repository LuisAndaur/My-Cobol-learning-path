      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "ORDENAR-ARRAY-BURBUJEO".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  N    PIC 9.
       77  I    PIC 9.
       77  TEMP PIC 99.
       01  MY-ARRAY.
       05  MY-ELEMENTOS OCCURS 5 TIMES.
           10  ELEMENT PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-LOGIC.

           MOVE 5 TO ELEMENT(1)
           MOVE 1 TO ELEMENT(2)
           MOVE 4 TO ELEMENT(3)
           MOVE 2 TO ELEMENT(4)
           MOVE 8 TO ELEMENT(5)

           DISPLAY "Array antes de ordenarlo:"
           PERFORM DYSPLAY-ELEMENTOS

           PERFORM SORT-ARRAY

           DISPLAY "Array despues de ordenarlo:"
           PERFORM DYSPLAY-ELEMENTOS

           STOP RUN.

       SORT-ARRAY.
           MOVE 5 TO N.

           PERFORM UNTIL N = 1
               MOVE 1 TO I
               PERFORM UNTIL I >= N
                   IF ELEMENT(I) > ELEMENT(I + 1)
                       MOVE ELEMENT(I) TO TEMP
                       MOVE ELEMENT(I + 1) TO ELEMENT(I)
                       MOVE TEMP TO ELEMENT(I + 1)
                   END-IF
                   ADD 1 TO I
               END-PERFORM
               SUBTRACT 1 FROM N
           END-PERFORM.

       DYSPLAY-ELEMENTOS.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
           DISPLAY "Element " I ": " ELEMENT(I)
           END-PERFORM.

       END PROGRAM "ORDENAR-ARRAY-BURBUJEO".
