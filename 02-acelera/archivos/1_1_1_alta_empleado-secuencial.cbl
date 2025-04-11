      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "ALTA_EMPLEADO_S".
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
      *ARCHIVO FISICO EN MODO SECUENCIAL
       SELECT empleados-archivo
       ASSIGN TO "empleados-s.dat"
       ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

      *ARCHIVO LOGICO
       FD empleados-archivo.
       01  empleados-registro.
           05  empleados-id         PIC 9(6).
           05  empleados-nombre     PIC X(25).
           05  empleados-apellidos  PIC X(35).
           05  empleados-edad       PIC 9(3).
           05  empleados-telefono   PIC X(9).
           05  empleados-direccion  PIC X(35).

       WORKING-STORAGE SECTION.
       01  si-no   PIC X VALUE "S".

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.
           OPEN EXTEND empleados-archivo.

           PERFORM OBTENER-CAMPOS UNTIL si-no = "N".
           CLOSE empleados-archivo

           STOP RUN.

       OBTENER-CAMPOS.
           MOVE SPACE TO empleados-registro.

           DISPLAY "Introduce ID del empleado: ".
           ACCEPT empleados-id.

           DISPLAY "Introduce nombre del empleado: ".
           ACCEPT empleados-nombre.

           DISPLAY "Introduce apellido/s del empleado: ".
           ACCEPT empleados-apellidos.

           DISPLAY "Introduce edad del empleado: ".
           ACCEPT empleados-edad.

           DISPLAY "Introduce telefono del empleado: ".
           ACCEPT empleados-telefono.

           DISPLAY "Introduce direccion del empleado: ".
           ACCEPT empleados-direccion.

           WRITE empleados-registro.

           DISPLAY "¿Desea almacenar otro registro en la base de datos?"
           "(s/n)".
           ACCEPT si-no.

           IF si-no = "s" OR "S"
               MOVE "S" TO  si-no
               ELSE
                   MOVE "N" TO  si-no
           END-IF.

       END PROGRAM "ALTA_EMPLEADO_S".
