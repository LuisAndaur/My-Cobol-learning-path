      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "ARCHIVO-SECUENCIAL-EMPLEADOS".
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
      *ARCHIVO FISICO EN MODO SECUENCIAL
       SELECT OPTIONAL producto-s
       ASSIGN TO "producto-sec.dat"
       ORGANIZATION IS SEQUENTIAL.

      *ARCHIVO FISICO EN MODO INDEXADO
       SELECT producto-i
       ASSIGN TO "c:/files/producto.dat"
       ORGANIZATION IS INDEXED
       RECORD KEY IS producto-id
       ACCESS MODE IS RANDOM.
      *ACCESS MODE IS SEQUENTIAL.

      *ARCHIVO FISICO EN MODO DINAMICO
       SELECT producto-dinamic
       ASSIGN TO "producto.dat"
       ORGANIZATION IS INDEXED
       RECORD KEY IS producto-dinamic
       ACCESS MODE IS DYNAMIC.

       CONFIGURATION SECTION.
           SPECIAL-NAMES.
             DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.

      *ARCHIVO LOGICO
       FD producto.
       01  producto-registro.
           05  producto-id         PIC 9(6).
           05  producto-control    PIC 9.
           05  producto-descript   PIC X(35).
           05  producto-precio     PIC 9(4)V99.
           05  producto-stock      PIC 9(6).
           05  producto-caducidad  PIC X(8).
           05  producto-critico    PIC 9(6).

       WORKING-STORAGE SECTION.


       PROCEDURE DIVISION.


           STOP RUN.

       END PROGRAM "ARCHIVO-SECUENCIAL-EMPLEADOS".
