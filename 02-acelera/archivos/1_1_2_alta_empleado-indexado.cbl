      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "ALTA_EMPLEADO_I".
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
      *ARCHIVO FISICO EN MODO INDEXADO
       SELECT empleados-archivo
       ASSIGN TO "empleados-i.dat"
       ORGANIZATION IS INDEXED
       RECORD KEY IS empleados-id
       ACCESS MODE IS DYNAMIC.

       DATA DIVISION.
       FILE SECTION.
      *ARCHIVO LOGICO
       FD empleados-archivo.
       01  empleados-registro.
           05  empleados-id            PIC 9(6).
           05  empleados-nombre        PIC X(25).
           05  empleados-apellidos     PIC X(35).
           05  empleados-edad          PIC 9(3).
           05  empleados-telefono      PIC X(9).
           05  empleados-direccion     PIC X(35).

       WORKING-STORAGE SECTION.
       01  si-no                       PIC X.
       01  entrada                     PIC X.

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.
           PERFORM PROCEDIMIENTO-DE-APERTURA.
           MOVE "S" TO si-no.

           PERFORM AGREGAR-REGISTROS
           UNTIL si-no = "N".

           PERFORM PROCEDIMIENTO-DE-CIERRE.

           FINALIZA-PROGRAMA.
           STOP RUN.

       PROCEDIMIENTO-DE-APERTURA.
           OPEN EXTEND empleados-archivo.

       PROCEDIMIENTO-DE-CIERRE.
           CLOSE empleados-archivo.

       AGREGAR-REGISTROS.
           MOVE "N" TO entrada.

           PERFORM OBTENER-DATOS
           UNTIL entrada = "S".

           PERFORM ESCRIBIR-REGISTRO.
           PERFORM REINICIAR.

       OBTENER-DATOS.
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

           PERFORM FIN-CARGA.

       ESCRIBIR-REGISTRO.
           WRITE empleados-registro.

       REINICIAR.
           DISPLAY "¿Desea almacenar otro registro en la base de datos?"
           "(s/n)".
           ACCEPT si-no.

           IF si-no = "s" OR si-no = "S"
               MOVE "S" TO  si-no
               ELSE
                   MOVE "N" TO  si-no
           END-IF.

       FIN-CARGA.
           MOVE "S" TO entrada.

       END PROGRAM "ALTA_EMPLEADO_I".
