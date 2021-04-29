**********************
      * Author: THULIO
      * Date: 23/04/2021
      * Purpose: CONCATENAÇÃO
      * Tectonics: cobc
      **********************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONCATENACAO.
      **********************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DATAHORA.
           02 ANO PIC 9(4).
           02 MES PIC 9(2).
           02 DIA PIC 9(2).
           02 HOR PIC 9(2).
           02 MIN PIC 9(2).
           02 SEG PIC 9(2).
       01 TEXTODATAHORA PIC X(40).
       01 CPF     PIC 9(11) VALUE 12345678901.
       01 CPF-FMT PIC X(14).
      **********************
       PROCEDURE DIVISION.

            MOVE FUNCTION CURRENT-DATE TO DATAHORA

            DISPLAY 'DATA E HORA: '
            DATAHORA(1:4)'/'DATAHORA(5:2)'/'DATAHORA(7:2)

            DISPLAY 'FMT BRA: ' DIA '/' MES '/' ANO

            DISPLAY 'DATA E HORA: '
            DATAHORA(9:2)':'DATAHORA(11:2)':'DATAHORA(13:2)

            DISPLAY 'FMT HORA: ' HOR ':' MIN ':' SEG

            STRING
                'DATA: ' DIA '/' MES '/' ANO ' - '
                'HORA: ' HOR ':' MIN ':' SEG
                DELIMITED BY SIZE INTO TEXTODATAHORA
            END-STRING
            DISPLAY 'TEXTO DATA E HORA: ' TEXTODATAHORA

            STRING
               CPF(1:3) '.' CPF(4:3) '.' CPF(7:3) '-' CPF(10:2)
                 DELIMITED BY SIZE INTO CPF-FMT
            END-STRING

            DISPLAY 'TEXTO DATA E HORA: ' CPF-FMT

           STOP RUN.
       END PROGRAM CONCATENACAO.
