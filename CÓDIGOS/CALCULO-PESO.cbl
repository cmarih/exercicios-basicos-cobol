      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 23/04/2020
      * Purpose: CALCULO DO PESO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PESO-IDEAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES. DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 WS-SEXO                      PIC X(1)    VALUE ' '.
       01 WS-ALTURA                    PIC 9(4)V99 VALUE ZERO.
       01 WS-NOME                      PIC X(30)   VALUE SPACES.
       01 WS-PESO-ATUAL                PIC 9(4)    VALUE ZEROS.
       01 WS-PESO-IDEAL                PIC 9(3)V99 VALUE ZERO.
       01 WS-PESO-IDEAL-MASK           PIC ZZZ.VZZ.
       01 WS-PESO-ATUAL-MASK           PIC ZZZ.VZZ.
      ******************************************************************
       PROCEDURE DIVISION.
           DISPLAY 'INFORME NOME: ' ACCEPT WS-NOME

           DISPLAY 'INFORME SEXO: "M" OU "F"' ACCEPT WS-SEXO

           IF WS-SEXO <> 'M' AND WS-SEXO <> 'F'
               DISPLAY '--------------------------------------'
               DISPLAY  'SEXO INFORMADO NÃO ENCONTRADO'
               DISPLAY '--------------------------------------'

               STOP RUN
           END-IF

           DISPLAY 'INFORME PESO ATUAL: ' ACCEPT WS-PESO-ATUAL

           DISPLAY 'INFORME SUA ALTURA EM M:' ACCEPT WS-ALTURA

           MOVE WS-PESO-ATUAL TO WS-PESO-ATUAL-MASK

               DISPLAY '......................................'
               DISPLAY 'NOME: ' WS-NOME
               DISPLAY 'PESO ATUAL: ' WS-PESO-ATUAL-MASK ' KG'
               DISPLAY '......................................'

           IF WS-SEXO = 'M'
               COMPUTE WS-PESO-IDEAL = (WS-ALTURA * 72,7) - 58
               MOVE WS-PESO-IDEAL TO WS-PESO-IDEAL-MASK

                   IF WS-PESO-ATUAL > WS-PESO-IDEAL
                       DISPLAY 'ACIMA DO PESO IDEAL!!!'
                   END-IF
                   IF WS-PESO-ATUAL < WS-PESO-IDEAL
                       DISPLAY 'ABAIXO DO PESO IDEAL!!!'
                   END-IF
                   IF WS-PESO-ATUAL = WS-PESO-IDEAL
                       DISPLAY 'PESO IDEAL!!!'
                   END-IF
           END-IF
           IF WS-SEXO = 'F'
               COMPUTE WS-PESO-IDEAL = (WS-ALTURA * 62,1) - 44,7
               MOVE WS-PESO-IDEAL TO WS-PESO-IDEAL-MASK

                   IF WS-PESO-ATUAL > WS-PESO-IDEAL
                       DISPLAY 'ACIMA DO PESO IDEAL!!!'
                   END-IF
                   IF WS-PESO-ATUAL < WS-PESO-IDEAL
                       DISPLAY 'ABAIXO DO PESO IDEAL!!!'
                   END-IF
                   IF WS-PESO-ATUAL = WS-PESO-IDEAL
                       DISPLAY 'PESO IDEAL!!!'
                   END-IF
           END-IF

            DISPLAY 'PESO IDEAL: ' WS-PESO-IDEAL-MASK' KG'
            DISPLAY '......................................'
            STOP RUN.
      ******************************************************************
       END PROGRAM PESO-IDEAL.
