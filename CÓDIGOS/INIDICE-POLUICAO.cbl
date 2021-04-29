      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 22/04/2021
      * Purpose: CALCULO DE INDICE DE POLUIÇÃO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INDICE-POLUICAO.
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES. DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 INDICE-POLUICAO                          PIC 9(03)V9(2).

       01 DATA-ATUAL.
           02 ANO              PIC 9(04).
           02 MES              PIC 9(02).
           02 DIA              PIC 9(02).
           02 HORA             PIC 9(02).
           02 MIN              PIC 9(02).
           02 SEG              PIC 9(02).
       01 DATA-FINAL.
           02 ANOO              PIC 9(04).
           02 MESS              PIC 9(02).
           02 DIAS              PIC 9(02).
           02 HORAS             PIC 9(02).
           02 MINS              PIC 9(02).
           02 SEGS              PIC 9(02).

      ******************************************************************
       PROCEDURE DIVISION.
           MOVE FUNCTION CURRENT-DATE TO DATA-ATUAL

               DISPLAY '-----------------------------------'
               DISPLAY 'DATA ATUAL:  ' DIA '/' MES '/' ANO
               DISPLAY '-----------------------------------'
               DISPLAY '-----------------------------------'
               DISPLAY 'HORA ATUAL:  ' HORA ':' MIN ':' SEG
               DISPLAY '-----------------------------------'

           DISPLAY 'DIGITE O INDICE DE POLUICAO: '
           ACCEPT INDICE-POLUICAO

            IF INDICE-POLUICAO >= 0,05 AND INDICE-POLUICAO <= 0,25
              DISPLAY 'INDICE ACEITAVEL'
            END-IF
              IF INDICE-POLUICAO >= 0,3 AND INDICE-POLUICAO < 0,4
                DISPLAY 'GRUPO I INTIMADO A SUSPENDER ATIVIDADE'
              END-IF
              IF INDICE-POLUICAO >= 0,4 AND INDICE-POLUICAO < 0,5
                DISPLAY 'GRUPO I E II INTIMADO A SUSPENDER ATIVIDADE'
              END-IF
              IF INDICE-POLUICAO >= 0,5
                DISPLAY 'TODOS OS GRUPOS DEVEM SUSPENDER ATIVIDADES'
              END-IF


           MOVE FUNCTION CURRENT-DATE TO DATA-FINAL

               DISPLAY '-----------------------------------'
               DISPLAY 'DATA FINAL:  ' DIAS '/' MESS '/' ANOO
               DISPLAY '-----------------------------------'
               DISPLAY '-----------------------------------'
               DISPLAY 'HORA FINAL:  ' HORAS ':' MINS ':' SEGS
               DISPLAY '-----------------------------------'

            STOP RUN.
      ******************************************************************
       END PROGRAM INDICE-POLUICAO.
