      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "CAPICUA".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
             DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  I       PIC S9 VALUE 1.
       77  J       PIC S9 VALUE 5.
       01  NUMEROS.
           02  NUMERO  OCCURS 5 TIMES PIC 9.

       PROCEDURE DIVISION.
      *Validar que sea NOT NUMERIC y que sea de 5 cifras si o si
      *Dar opcion de seguir repitiendo
           DISPLAY "<------------------------------------>".
           DISPLAY "Ingresa un numero (5 digitos) ".
           DISPLAY "<------------------------------------>".
           ACCEPT numeros.

           DISPLAY "Usted ingreso: " numeros.

           PERFORM UNTIL I > 5
                IF (numero(I) = numero(J)) THEN
                        IF (I = 5 AND J = 1) THEN
                            DISPLAY "Es capicua!"
                        END-IF

                        ADD 1 TO I
                        SUBTRACT 1 FROM J
                    ELSE
                        DISPLAY "No es capicua!"
                        EXIT PERFORM
                END-IF
            END-PERFORM.

           STOP RUN.

       END PROGRAM "CAPICUA".
