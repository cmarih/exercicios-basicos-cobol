      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 30/04/2021
      * Purpose: INCREMENTO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INCREMENTO.
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           02 CONTADOR             PIC 9(02).

      ******************************************************************
       PROCEDURE DIVISION.
            MOVE 0 TO CONTADOR
               DISPLAY "********************************"
               DISPLAY "***********CRESCENTE************"
               DISPLAY "********************************"

               PERFORM UNTIL CONTADOR EQUAL 10
                   ADD 1 TO CONTADOR

                   DISPLAY "CONTADOR: " CONTADOR
               END-PERFORM.

               DISPLAY "********************************"
               DISPLAY "**********DECRESCENTE***********"
               DISPLAY "********************************"
               PERFORM UNTIL CONTADOR EQUAL 0
                   DISPLAY "CONTADOR: " CONTADOR

                   ADD -1 TO CONTADOR

               END-PERFORM.
            STOP RUN.
       END PROGRAM INCREMENTO.
