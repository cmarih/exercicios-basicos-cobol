      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 30/04/2021
      * Purpose: LER 5 NUMEROS E SOMAR O TOTAL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTADOR-SOMA.
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           02 CONTADOR             PIC 9(04).
           02 NUMERO               PIC 9(04).
           02 SOMA                 PIC 9(04).
           02 SOMA-MASK            PIC  ZZZZ.
      ******************************************************************
       PROCEDURE DIVISION.
            MOVE 0 TO CONTADOR

               PERFORM UNTIL CONTADOR >= 5

                   DISPLAY "DIGITE UM NUMERO MAIOR QUE 0 : "
                   ACCEPT NUMERO

                   ADD 1 TO CONTADOR

                   ADD NUMERO TO SOMA

               END-PERFORM.

                   MOVE SOMA TO SOMA-MASK

                   DISPLAY "****************************"
                   DISPLAY '* A SOMA DOS NUMEROS: ' SOMA-MASK ' *'
                   DISPLAY "****************************"

            STOP RUN.
       END PROGRAM CONTADOR-SOMA.
