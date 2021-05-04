      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 04/05/2021
      * Purpose: JOGO XADREZ
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. JOGO-XADREZ.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           02 CONTADOR             PIC 9(03).
           02 DOBRO                PIC 9(20).
           02 SOMA                 PIC 9(20).

      ******************************************************************
       PROCEDURE DIVISION.
            INITIALIZE SOMA
                       DOBRO
                       CONTADOR

            MOVE 1 TO SOMA
                      CONTADOR
                      DOBRO
            DISPLAY 'CONTADOR: ' CONTADOR ' SOMA: ' SOMA
                       ' DOBRO: ' DOBRO

            PERFORM UNTIL CONTADOR = 64
               ADD 1 TO CONTADOR

               COMPUTE DOBRO = DOBRO * 2

               COMPUTE SOMA = SOMA + DOBRO

               DISPLAY 'CONTADOR: ' CONTADOR ' SOMA: ' SOMA
                       ' DOBRO: ' DOBRO

            END-PERFORM


            STOP RUN.
       END PROGRAM JOGO-XADREZ.
