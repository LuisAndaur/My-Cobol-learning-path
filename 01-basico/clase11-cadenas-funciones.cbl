      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "CADENAS-FUNCIONES".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-CADENA   PICTURE IS XXXXX.
       77  WS-CADENA-ALFAB PIC A(30).
       77  WS-CADENA-ALFAN PIC X(30).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           DISPLAY "INTRODUCE CUALQUIER CADENA: ".
           ACCEPT WS-CADENA.

           DISPLAY "CUALQUIER CADENA ES: " WS-CADENA.
           DISPLAY "LONGITUD: " FUNCTION LENGTH(WS-CADENA).
           DISPLAY "MAYUSCULA: " FUNCTION UPPER-CASE(WS-CADENA).
           DISPLAY "MINUSCULA: " FUNCTION LOWER-CASE(WS-CADENA).
           DISPLAY "____________________________________________".


           DISPLAY "INTRODUCE UNA CADENA ALFABETICA: ".
           ACCEPT WS-CADENA-ALFAB.

           DISPLAY "CADENA ALFABETICA ES: " WS-CADENA-ALFAB.
           DISPLAY "LONGITUD: " FUNCTION LENGTH(WS-CADENA-ALFAB).
           DISPLAY "MAYUSCULA: " FUNCTION UPPER-CASE(WS-CADENA-ALFAB).
           DISPLAY "MINUSCULA: " FUNCTION LOWER-CASE(WS-CADENA-ALFAB).
           DISPLAY "____________________________________________".


           DISPLAY "INTRODUCE UNA CADENA ALFANUMERICA: ".
           ACCEPT WS-CADENA-ALFAN.

           DISPLAY "CADENA ALFANUMERICA ES: " WS-CADENA-ALFAN.
           DISPLAY "LONGITUD: " FUNCTION LENGTH(WS-CADENA-ALFAN).
           DISPLAY "MAYUSCULA: " FUNCTION UPPER-CASE(WS-CADENA-ALFAN).
           DISPLAY "MINUSCULA: " FUNCTION LOWER-CASE(WS-CADENA-ALFAN).
           DISPLAY "____________________________________________".

       PROGRAM-DONE.

           PERFORM ES-ALFABETICA.
           STOP RUN.

       ES-ALFABETICA.
           IF WS-CADENA-ALFAB IS ALPHABETIC THEN
               DISPLAY "CADENA ALFABETICA VERIFICADA ES: "
                                                   WS-CADENA-ALFAB
           ELSE
               DISPLAY "ESTA CADENA NO ES ALFABETICA: "
                                                   WS-CADENA-ALFAB
           END-IF.

       END PROGRAM "CADENAS-FUNCIONES".
