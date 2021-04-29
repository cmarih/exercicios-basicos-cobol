      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 20/04/2020
      * Purpose: CALCULO DA MEDIA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATAA.
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES. DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
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
      * 01 DATA-HORA            PIC 9(30).
      ******************************************************************
       PROCEDURE DIVISION.

            MOVE FUNCTION CURRENT-DATE TO DATA-ATUAL


               DISPLAY '-----------------------------------'
               DISPLAY 'DATA ATUAL:  ' DIA '/' MES '/' ANO
               DISPLAY '-----------------------------------'
               DISPLAY '-----------------------------------'
               DISPLAY 'HORA ATUAL:  ' HORA ':' MIN ':' SEG
               DISPLAY '-----------------------------------'


               MOVE FUNCTION CURRENT-DATE TO DATA-FINAL

               DISPLAY '-----------------------------------'
               DISPLAY 'DATA FINAL:  ' DIAS '/' MESS '/' ANOO
               DISPLAY '-----------------------------------'
               DISPLAY '-----------------------------------'
               DISPLAY 'HORA FINAL:  ' HORAS ':' MINS ':' SEGS
               DISPLAY '-----------------------------------'
            STOP RUN.
      ******************************************************************
       END PROGRAM DATAA.
