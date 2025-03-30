      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "EJERCICIO-DIAS-POR-MES".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  MES   PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese un mes: ".
           ACCEPT MES.

           IF MES = 1 OR MES = 3 OR MES = 5 OR MES = 7 OR MES = 8
              OR MES = 10 OR MES = 12
               DISPLAY "El mes " MES " tiene 31 dias!"
           ELSE
               IF MES = 4 OR MES = 6 OR MES = 9 OR MES = 11
                   DISPLAY "El mes " MES " tiene 30 dias!"
               ELSE
                   DISPLAY "El mes " MES " es el raro de 28 dias!"
           END-IF.

           STOP RUN.
       END PROGRAM "EJERCICIO-DIAS-POR-MES".
