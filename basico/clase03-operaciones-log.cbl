      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "OPERACIONES2".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  A           PIC 9(2) VALUE 0.
       77  B           PIC 9(2) VALUE 0.
       77  C           PIC 9(2) VALUE 0.
       77  RESTO       PIC 9(2) VALUE 0.
       77  COCIENTE    PIC 9(2) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese un numero: ".
           ACCEPT A.
           DISPLAY "Ingrese un 2DO numero: ".
           ACCEPT B.
           DISPLAY "Ingrese un 3ER numero: ".
           ACCEPT C.
           DISPLAY " ".
           DISPLAY "A = " A " - B = " B " - C = " C.
      *
           IF (A = B AND B = C)
               DISPLAY "En (A = B AND B = C), A-B-C son IGUALES!"
           ELSE
               DISPLAY "En (A = B AND B = C), A-B-C NO son IGUALES!"
           END-IF.

           IF (A > B AND B >= C)
               DISPLAY "En (A > B AND B >= C), A es el MAYOR!"
           ELSE
               DISPLAY "En (A > B AND B >= C), A NO es el MAYOR!"
           END-IF.

           IF (A < B AND C < B)
               DISPLAY "En (A < B AND C < B), B es el MAYOR!"
           ELSE
               DISPLAY "En (A < B AND C < B), B NO es el MAYOR!"
           END-IF.

           IF (A < B OR B < C) AND NOT(A = B)
               DISPLAY "=> C es el MAYOR!"
           ELSE
               DISPLAY "=> C NO es el MAYOR!"
           END-IF.
           STOP RUN.
       END PROGRAM "OPERACIONES2".
