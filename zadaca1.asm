 DOCNI_1: MVI D,178d ;14 циклуси x 0,4 = 5,6 микросекунди x 178= 1ms
 DOCNI:   DCR D ;4 циклуси
          JNZ DOCNI ;10 циклуси
          RET
   
 DOCNI_30: MVI E,30d ; 30 пати по 1 ms = 30 ms
 DOCNI_1: MVI D,178d ; јамка за 1ms
 DOCNI: DCR D
        JNZ DOCNI
        DCR E
        JNZ DOCNI_1
        RET
 
 START: CALL DOCNI_30 ;доцнење од 30 ms
        IN VLEZNA ;се вчитува податокот од I/O уред на адреса OAh
        MOV B,A
        ANI 00100000b ;се проверува 5-тиот дали е 0
        JNZ MNOZI_SO_7 ;доколку резултатот не е нула се скока на mnozi_so_7
        MOV A,B
        ORI 11111011b ;се проверува дали битот 2 е единица
        CPI FFh ;ACC се споредува со FFh
        JNZ MNOZI_SO_7 ;доколку не е 0 се скока на mnozi_so_7
 DELI_SO_2: MOV A,B ; исполнети се двата услови
            RRC ; ACC се дели со 2
            STA IZLEZNA ;резултатот се запишува на Mm порта
            JMP START ;безусловен скок на почеток
 MNOZI_SO_7:MVI C,7d ;множењето е реализирано со собирање 
            MVI A,0
       PAK: ADD B
            DCR C
            JNZ PAK
            STA IZLEZNA ;резултатот се запишува на F00Ah
           JMP START
           END
 
 VLEZNA EQU OAh
 IZLEZNA EQU F00Ah 
