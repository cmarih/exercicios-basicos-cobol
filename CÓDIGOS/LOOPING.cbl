      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 30/04/2021
      * Purpose: LOOPING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOPING.
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           02 CONTADOR             PIC 9(02).

      ******************************************************************
       PROCEDURE DIVISION.
            INITIALIZE WS-VARIAVEIS

               PERFORM UNTIL CONTADOR EQUAL 10
                   COMPUTE CONTADOR = CONTADOR + 1

                   DISPLAY "CONTADOR: " CONTADOR
               END-PERFORM.
            STOP RUN.
       END PROGRAM LOOPING.
