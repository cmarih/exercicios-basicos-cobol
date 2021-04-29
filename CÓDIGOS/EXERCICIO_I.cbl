      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 20/04/2020
      * Purpose: CALCULO DA MEDIA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEDIA.
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES. DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 MEDIA                            PIC 9(4)V99.
       01 MEDIA-MASCARA                    PIC ZZ.V99.
       01 NOTA1                            PIC 9(4)V99.
       01 NOTA2                            PIC 9(4)V99.
       01 NOTA3                            PIC 9(4)V99.
       01 NOTA4                            PIC 9(4)V99.
      ******************************************************************
       PROCEDURE DIVISION.
               MOVE 5,5 TO NOTA1
               MOVE 0,5 TO NOTA2
               MOVE 0,0 TO NOTA3
               MOVE 8,5 TO NOTA4

               COMPUTE
                   MEDIA = (NOTA1 + NOTA2 + NOTA3 + NOTA4) / 4
                END-COMPUTE

               IF MEDIA >= 5
                   IF MEDIA >= 7 THEN
                       DISPLAY 'ALUNO APROVADO'
                   ELSE
                   DISPLAY 'ALUNO NECESSITA REFAZER AVALIACAO'
      *
               ELSE
                   DISPLAY 'ALUNO REPROVADO'
               END-IF

               MOVE MEDIA TO MEDIA-MASCARA
               DISPLAY '-----------------------------------'
               DISPLAY 'RESULTADO DA MEDIA: ' MEDIA-MASCARA.
               DISPLAY '-----------------------------------'
            STOP RUN.
      ******************************************************************
       END PROGRAM MEDIA.
