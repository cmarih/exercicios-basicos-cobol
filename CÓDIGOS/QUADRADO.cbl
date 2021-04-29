      ******************************************************************
      * Author: MARILENE COSTA
      * Date: 22/04/2020
      * Purpose: CALCULO DO QUADRADO NUMERO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QUADRADO.
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES. DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
      ******************************************************************
       WORKING-STORAGE SECTION.
       01 SOMA                              PIC 9(6).
       01 SOMA-MASK                         PIC ZZZ.ZZZ.
       01 VALOR1                            PIC 9(4).
       01 QUADRADO1                         PIC 9(4).
       01 QUADRADO1-MASK                    PIC ZZZ.ZZZ.
       01 VALOR2                            PIC 9(4).
       01 QUADRADO2                         PIC 9(4).
       01 QUADRADO2-MASK                    PIC ZZZ.ZZZ.
       01 VALOR3                            PIC 9(4).
       01 QUADRADO3                         PIC 9(4).
       01 QUADRADO3-MASK                    PIC ZZZ.ZZZ.
       01 VALOR4                            PIC 9(4).
       01 QUADRADO4                         PIC 9(4).
       01 QUADRADO4-MASK                    PIC ZZZ.ZZZ.
      ******************************************************************
       PROCEDURE DIVISION.
               MOVE 2 TO VALOR1
               MOVE 4 TO VALOR2
               MOVE 6 TO VALOR3
               MOVE 8 TO VALOR4

               COMPUTE QUADRADO1 = VALOR1 * VALOR1

               COMPUTE QUADRADO2 = VALOR2 * VALOR2

               COMPUTE QUADRADO3 = VALOR3 * VALOR3

               COMPUTE QUADRADO4 = VALOR4 * VALOR4

               COMPUTE SOMA = QUADRADO1 + QUADRADO2 + QUADRADO3 +
                              QUADRADO4

               MOVE QUADRADO1 TO QUADRADO1-MASK
               DISPLAY 'VALOR QUADRADO 1: ' QUADRADO1-MASK
               MOVE QUADRADO2 TO QUADRADO2-MASK
               DISPLAY 'VALOR QUADRADO 2: ' QUADRADO2-MASK
               MOVE QUADRADO3 TO QUADRADO3-MASK
               DISPLAY 'VALOR QUADRADO 3: ' QUADRADO3-MASK
               MOVE QUADRADO4 TO QUADRADO4-MASK
               DISPLAY 'VALOR QUADRADO 4: ' QUADRADO4-MASK
               MOVE SOMA TO SOMA-MASK
               DISPLAY '-----------------------------------'
               DISPLAY 'SOMA DOS QUADRADOS: ' SOMA-MASK.
               DISPLAY '-----------------------------------'
            STOP RUN.
      ******************************************************************
       END PROGRAM QUADRADO.
