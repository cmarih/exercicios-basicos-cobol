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
           02 NUMERADOR            PIC 9(04).

      ******************************************************************
       PROCEDURE DIVISION.
            MOVE 0 TO CONTADOR

            DISPLAY "DIGITE UM NUMERO: "
            ACCEPT NUMERADOR

               DISPLAY "********************************"
               DISPLAY "***** CONTANDO 'N' NUMEROS *****"
               DISPLAY "********************************"

               PERFORM UNTIL CONTADOR EQUAL NUMERADOR

                   ADD 1 TO CONTADOR

                   DISPLAY "CONTADOR: " CONTADOR

               END-PERFORM.
            STOP RUN.
       END PROGRAM INCREMENTO.
