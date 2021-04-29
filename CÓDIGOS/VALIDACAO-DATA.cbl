      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 27/04/2021
      * Purpose: VALIDAÇÃO DE DATA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VALIDACAO-DATA.
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 DATA-ENTRADA         PIC X(10) VALUE ' '.
       01 RESULT-DIV           PIC 9(04) VALUE 0.
       01 RESTO-DIV            PIC 9(04) VALUE 0.
      ******************************************************************
       PROCEDURE DIVISION.
               DISPLAY 'DIGITE UMA DATA: '
               ACCEPT DATA-ENTRADA
      * 27/04/00

               IF DATA-ENTRADA EQUAL ' '
                  DISPLAY 'CAMPO OBRIGATORIO - DATA'
               STOP RUN
               END-IF

               IF (DATA-ENTRADA(3:1) NOT = '/' AND '-' AND '.') OR
                  (DATA-ENTRADA(6:1) NOT = '/' AND '-' AND '.')
                  DISPLAY 'DATA INVALIDA'
               STOP RUN
               END-IF

               IF DATA-ENTRADA(1:2) = '00'
                  DISPLAY 'DIA INVALIDO'
               STOP RUN
               END-IF

               IF DATA-ENTRADA(4:2) = '00' OR DATA-ENTRADA(4:2) > '12'
                  DISPLAY 'MES INVALIDO'
               STOP RUN
               END-IF


               IF DATA-ENTRADA(7:4) = '0000'
               DISPLAY 'ANO INVALIDO'
               STOP RUN
               END-IF

               IF DATA-ENTRADA(4:2) = '01' OR '03' OR '05' OR
               '07' OR '08' OR '10' OR '12'
                   IF DATA-ENTRADA(1:2) > '31'
                       DISPLAY 'DATA INVALIDA'
                       STOP RUN
               END-IF
               END-IF

               IF DATA-ENTRADA(4:2) = '04' OR '06' OR '09' OR '11'
                   IF DATA-ENTRADA(1:2) > '30'
                       DISPLAY 'DATA INVALIDA'
                       STOP RUN
                   END-IF
               END-IF

               IF DATA-ENTRADA(4:2) = '02'
                   DIVIDE DATA-ENTRADA(7:4) BY 4
                       GIVING RESULT-DIV REMAINDER RESTO-DIV
                           IF RESTO-DIV = ZEROS *> ANO BISSEXTO
                               IF DATA-ENTRADA(1:2) > '29'
                                   DISPLAY 'DATA INVALIDA'
                                       STOP RUN
                               END-IF
                           ELSE
                           IF DATA-ENTRADA(1:2) > '28'
                               DISPLAY 'DATA INVALIDA'
                               STOP RUN
                           END-IF
                        END-IF
                       END-IF

               DISPLAY 'DATA INFORMADA: ' DATA-ENTRADA
            STOP RUN.
       END PROGRAM VALIDACAO-DATA.
