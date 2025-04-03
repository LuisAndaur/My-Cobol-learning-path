      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM1 PIC 9(4).
           01 NUM2 PIC 9(4).
           01 RESULT PIC 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese un numero: ".
           ACCEPT NUM1
           DISPLAY NUM1

           DISPLAY "Ingrese un numero: ".
           ACCEPT NUM2
           DISPLAY NUM2

           ADD NUM1, NUM2 GIVING RESULT.
           DISPLAY "El resultado es: ", RESULT.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
