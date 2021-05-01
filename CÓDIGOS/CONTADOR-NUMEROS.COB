      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 30/04/2021
      * Purpose: INCREMENTO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTADOR-NUMEROS.
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           02 CONTADOR             PIC 9(04).
           02 NUMERADOR            PIC 9(04).
           02 CONTADOR-MASK       PIC  ZZZZ.

      ******************************************************************
       PROCEDURE DIVISION.
            MOVE 0 TO CONTADOR

            DISPLAY "DIGITE UM NUMERO MAIOR QUE 0 : "
            ACCEPT NUMERADOR

               DISPLAY "********************************"
               DISPLAY "***** CONTANDO 'N' NUMEROS *****"
               DISPLAY "********************************"

               PERFORM UNTIL CONTADOR >= NUMERADOR

                   ADD 1 TO CONTADOR
                   MOVE CONTADOR TO CONTADOR-MASK
                   DISPLAY "CONTADOR: " CONTADOR-MASK

               END-PERFORM.
            STOP RUN.
       END PROGRAM CONTADOR-NUMEROS.
