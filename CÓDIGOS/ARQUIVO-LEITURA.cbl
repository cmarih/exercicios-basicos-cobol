      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 04/05/2021
      * Purpose: ARQUIVO - LEITURA -SAÍDA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQUIVO-ENTRADA-SAÍDA.
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      *-----------------------------------------------------------------
       INPUT-OUTPUT SECTION.

      ******************************************************************
       DATA DIVISION.
       FILE SECTION.

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

       END PROGRAM ARQUIVO-ENTRADA-SAIDA.
