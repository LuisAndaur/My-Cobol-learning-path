      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "DISPLAY_EMPLEADO_I".
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
       01  encabezado.
           05  e-empleados-id          PIC X(6)   VALUE "ID".
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  e-empleados-nombre      PIC X(25)  VALUE "NOMBRE".
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  e-empleados-apellidos   PIC X(35)  VALUE "APELLIDOS".
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  e-empleados-edad        PIC X(4)   VALUE "EDAD".
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  e-empleados-telefono    PIC X(9)   VALUE "TELEFONO".
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  e-empleados-direccion   PIC X(35)  VALUE "DIRECCION".

       01  registro-a-imprimir.
           05  r-empleados-id          PIC 9(6).
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  r-empleados-nombre      PIC X(25).
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  r-empleados-apellidos   PIC X(35).
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  r-empleados-edad        PIC 9(3).
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  r-empleados-telefono    PIC X(9).
           05  FILLER                  PIC X(4)   VALUE SPACES.
           05  r-empleados-direccion   PIC X(35).

       77  si-no                       PIC X.
       77  que-id                      PIC 9(6) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.
           MOVE SPACES TO registro-a-imprimir.
           PERFORM PROCEDIMIENTO-DE-APERTURA.

           PERFORM LEER-REGISTROS
           UNTIL si-no = 'N'.

           PERFORM PROCEDIMIENTO-DE-CIERRE.
           FINALIZA-PROGRAMA.
           CLOSE empleados-archivo.
           STOP RUN.

       PROCEDIMIENTO-DE-APERTURA.
           OPEN INPUT empleados-archivo.

       PROCEDIMIENTO-DE-CIERRE.
           CLOSE empleados-archivo.

       LEER-REGISTROS.
           DISPLAY "Que ID quieres imprimir?"
           ACCEPT que-id.

           MOVE que-id TO empleados-id.

           READ empleados-archivo INVALID KEY MOVE "N" TO si-no.

           IF si-no NOT EQUAL "N"
               PERFORM DISPLAY-CAMPOS
               ELSE
                   DISPLAY "ID de empleado inexistente: " que-id
                   PERFORM FINALIZA-PROGRAMA
           END-IF.

       DISPLAY-CAMPOS.
           DISPLAY encabezado.
           MOVE empleados-id TO r-empleados-id.
           MOVE empleados-nombre TO r-empleados-nombre.
           MOVE empleados-apellidos TO r-empleados-apellidos.
           MOVE empleados-edad TO r-empleados-edad.
           MOVE empleados-telefono TO r-empleados-telefono.
           MOVE empleados-direccion TO r-empleados-direccion.

           DISPLAY registro-a-imprimir.

       END PROGRAM "DISPLAY_EMPLEADO_I".
