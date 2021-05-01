      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 30/04/2021
      * Purpose: LOOPING DESCRECENTE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOPING-DESC.
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           02 CONTADOR             PIC 9(02).

      ******************************************************************
       PROCEDURE DIVISION.
            MOVE 10 TO CONTADOR

               PERFORM UNTIL CONTADOR EQUAL 0
                   DISPLAY "CONTADOR: " CONTADOR
                   COMPUTE CONTADOR = CONTADOR - 1

               END-PERFORM.
            STOP RUN.
       END PROGRAM LOOPING-DESC.
