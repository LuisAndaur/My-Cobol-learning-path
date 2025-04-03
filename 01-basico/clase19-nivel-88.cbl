      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "BUCLE-WHILE-Y-NIVEL-88".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  cliente.
           05  codigo-estado  PIC 9.
           88  cliente-activo VALUE 1.
           88  cliente-inactivo VALUE 2.

       PROCEDURE DIVISION.

           PERFORM 01-acepta-datos.
           PERFORM 02-estado.

           STOP RUN.

       01-acepta-datos.
           DISPLAY "Ingrese estado del cliente:"
           DISPLAY "1- activo"
           DISPLAY "2- inactivo"
           ACCEPT codigo-estado.

       02-estado.
           IF cliente-activo THEN
               DISPLAY "El estado del cliente es ACTIVO!"
           ELSE
               IF cliente-inactivo THEN
                   DISPLAY "El estado del cliente es INACTIVO!"
           END-IF.


       END PROGRAM "BUCLE-WHILE-Y-NIVEL-88".
