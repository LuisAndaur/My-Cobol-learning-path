      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "EJERCICIO-COMPLEMENTANDO-TODO".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUMEROS OCCURS 7 TIMES.
           05  NUMERO  PIC 9(2).

       01  I           PIC 9 VALUE 1.
       01  N-ENTRADA   PIC X(10).
       01  N-VALIDO    PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-LOGIC.

           PERFORM SOLICITAR-NUMEROS THRU IMPRIMIR-NUMEROS.

           STOP RUN.

       SOLICITAR-NUMEROS.
           PERFORM UNTIL I = 7
               DISPLAY "Ingrese un numero [" I "]: "
               ACCEPT N-ENTRADA
               PERFORM VALIDAR-IS-NUMERIC
           END-PERFORM.

       VALIDAR-IS-NUMERIC.
           MOVE N-ENTRADA TO N-VALIDO
           IF N-VALIDO > 0 THEN
               MOVE N-VALIDO TO NUMERO(I)
               ADD 1 TO I
           ELSE
               DISPLAY "Error: Solo se permiten numeros."
           END-IF.


       IMPRIMIR-NUMEROS.
           MOVE 1 TO I
           DISPLAY "Mis numeros: "
           PERFORM UNTIL I = 7
               DISPLAY "Posicion [" I "]: " NUMERO(I)
               ADD 1 TO I
           END-PERFORM.

       END PROGRAM "EJERCICIO-COMPLEMENTANDO-TODO".
