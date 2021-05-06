      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 04/05/2021
      * Purpose: LAYOUT-ARQUIVO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LAYOUT-ARQUIVO.
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       01 LAYOUT-ARQUIVO
           02 FD-NOME             PIC X(11).
           02 FD-NOTA1            PIC 9(02).
           02 FD-NOTA2            PIC 9(02).
           02 FD-NOTA3            PIC 9(02).
           02 FD-NOTA4            PIC 9(02).
           02 FD-DATA             PIC X(10).

       WORKING-STORAGE SECTION.

      ******************************************************************
       PROCEDURE DIVISION.

            STOP RUN.
       END PROGRAM LAYOUT-ARQUIVO.
