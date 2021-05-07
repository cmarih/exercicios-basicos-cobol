      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 04/05/2021
      * Purpose: ARQUIVO - LEITURA -SAÍDA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ-ENT-SAI.
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      *-----------------------------------------------------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQ1 ASSIGN TO DISK
                   ORGANIZATION IS LINE SEQUENTIAL.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       FD ARQ1
           LABEL RECORD  STANDARD
           VALUE OF FILE-ID IS 'ARQ1.TXT'.
       01 FD-ARQ-ALUNO.
           03 FD-NOME          PIC X(08).
           03 FD-IDADE         PIC 9(03).
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01 WS-CONTADOR          PIC 9(03).
      ******************************************************************
       PROCEDURE DIVISION.
               PERFORM INICIO-PROGRAMA.
               PERFORM PROCESSA-PROGRAMA.
               PERFORM FINALIZA-PROGRAMA.

       INICIO-PROGRAMA.
           MOVE 0 TO WS-CONTADOR

           DISPLAY 'INICIO PROGRAMA'
           EXIT.
       FIM-INICIO.

       PROCESSA-PROGRAMA.
           PERFORM UNTIL WS-CONTADOR = 10
               ADD 1 TO WS-CONTADOR
               DISPLAY 'CONTADOR: ' WS-CONTADOR
           END-PERFORM

           DISPLAY 'PROCESSA PROGRAMA'
           EXIT.
       FIM-PROCESSA.

       FINALIZA-PROGRAMA.

           DISPLAY 'FINALIZA PROGRAMA'
           EXIT.
           STOP RUN.
       FIM-FINALIZA.

       END PROGRAM ARQ-ENT-SAI.
