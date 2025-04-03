      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "VARIABLES".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
             DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  operacion        PIC X(1) VALUE SPACES.
       01  v-alfanum        PIC X(10) VALUE "ASD567Hg0".
       01  v-alfabet        PIC A(10) VALUE "AvBnjIopwe".
       01  v-num            PIC 9(5)V9(2) VALUE 12345,67.
       01  v-snum           PIC S9(5)V9(2) VALUE 12345,67.

      *COMP NUMERICA HEXADECIMAL
       01  v-num-comp       PIC 9(5)V9(2) COMP VALUE 12345,67.

      *COMP 3 NUMERICA COMPRIMIDA
       01  v-num-comp3      PIC S9(5)V9(2) COMP-3 VALUE 12345,67.

      *VARIABLES DE EDICION
       01  v-num-edi        PIC Z.ZZZ.ZZ9,99- VALUE -12345,67.
       01  v-edi            PIC -.---.--9,99 VALUE -12345,67.

       01  fecha.
      *UN SUBNIVEL NO PUEDE SER MAYOR QUE 49!
           05  dia          PIC 9(2)    VALUE   01.
           05  FILLER       PIC X       VALUE   "/".
           05  mes          PIC 9(2)    VALUE   06.
           05  FILLER       PIC X       VALUE   "/".
           05  anio         PIC 9(4)    VALUE   2025.

       01  linea-impre.
      *UN SUBNIVEL NO PUEDE SER MAYOR QUE 49!
           05  nombre       PIC X(10)   VALUE   "LUIS".
           05  FILLER       PIC X(5)    VALUE   SPACES.
           05  apellido1    PIC X(10)   VALUE   "GONZALEZ".
           05  FILLER       PIC X(5)    VALUE   SPACES.
           05  apellido2    PIC X(10)   VALUE   "GARCIA".

      *
       01  campo1           PIC X(3).
       01  campo2           REDEFINES campo1 PIC 9(3).

      *
       01  respuesta        PIC XX.

       PROCEDURE DIVISION.
       INGRESA.
           DISPLAY "<------------------------------------>"
           DISPLAY "Ingresa grupo de variables"
           DISPLAY "A = Alfabeticos y alfanumericos"
           DISPLAY "N = Numericos"
           DISPLAY "E = Edicion"
           DISPLAY "S = Finalizar"
           DISPLAY "<------------------------------------>"
           ACCEPT operacion

           PERFORM DECIDE.

       DECIDE.
           EVALUATE operacion
               WHEN "A"
                   DISPLAY "ALFANUMERICA X(10) --> " v-alfanum
                   DISPLAY "ALFABETICA A(10) --> " v-alfabet

                   PERFORM INGRESA

               WHEN "N"
                   DISPLAY "NUMERICA 9(5)V9(2) --> " v-num
                   DISPLAY "NUMERICA CON S9(5)V9(2) --> " v-snum

                   DISPLAY "N-COMP 9(5)V9(2) COMP --> " v-num-comp
                   DISPLAY "N-COMP3 CON S9(5)V9(2) COMP-3 --> "
                                                           v-num-comp3

                   PERFORM INGRESA

               WHEN "E"
                   DISPLAY "NUMERICA-EDI Z.ZZZ.ZZ9,99- --> " v-num-edi
                   DISPLAY "VARIABLE-EDI -.---.--9,99 --> " v-edi

                   DISPLAY "FECHA CON FILLER --> " fecha

                   DISPLAY "LINEA-IMPRE1 --> " linea-impre
                   DISPLAY "LINEA-IMPRE2 --> " linea-impre
                   DISPLAY "LINEA-IMPRE3 --> " linea-impre

                   PERFORM INGRESA

               WHEN "S"
                   DISPLAY "FINALIZA..."

               WHEN OTHER
                   DISPLAY "GRUPO INVALIDO"
                   PERFORM INGRESA

           END-EVALUATE.

           STOP RUN.

       END PROGRAM "VARIABLES".
