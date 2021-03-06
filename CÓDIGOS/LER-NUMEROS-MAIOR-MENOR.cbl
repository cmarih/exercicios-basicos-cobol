      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 30/04/2021
      * Purpose: LER 5 NUMEROS E SOMAR O TOTAL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIOR-MENOR.
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           02 CONTADOR             PIC 9(06).
           02 NUMERO               PIC 9(06).
           02 MAIOR                PIC 9(06).
           02 MENOR                PIC 9(06).
           02 MAIOR-MASK           PIC ZZZZZZ.
           02 MENOR-MASK           PIC ZZZZZZ.
      ******************************************************************
       PROCEDURE DIVISION.
               MOVE 0        TO CONTADOR
               MOVE 0        TO MAIOR
               MOVE 999999   TO MENOR

               PERFORM UNTIL CONTADOR >= 5

                   DISPLAY "DIGITE UM NUMERO MAIOR QUE 0: "
                   ACCEPT NUMERO

                   IF NUMERO > MAIOR
                       MOVE NUMERO TO MAIOR
                   END-IF
                   IF NUMERO < MENOR
                       MOVE NUMERO TO MENOR
                   END-IF

                   ADD 1 TO CONTADOR

               END-PERFORM.
                   MOVE MENOR  TO MENOR-MASK
                   MOVE MAIOR  TO MAIOR-MASK
                   DISPLAY "****************************"
                   DISPLAY '* MENOR NUMERO: ' MENOR-MASK'     *'
                   DISPLAY "****************************"

                   DISPLAY "****************************"
                   DISPLAY '* MAIOR NUMERO: ' MAIOR-MASK'     *'
                   DISPLAY "****************************"


            STOP RUN.
       END PROGRAM MAIOR-MENOR.
