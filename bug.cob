01  WS-AREA. 
    05  WS-VAR1 PIC 9(5) VALUE 0. 
    05  WS-VAR2 PIC 9(5) VALUE 0. 

* ... some other code ...

    ADD 1 TO WS-VAR1.
    IF WS-VAR1 > 99999 THEN 
       DISPLAY "Error: WS-VAR1 exceeded maximum value" 
       STOP RUN. 
    END-IF.
    ADD 1 TO WS-VAR2.
    IF WS-VAR2 > 99999 THEN 
       DISPLAY "Error: WS-VAR2 exceeded maximum value" 
       STOP RUN. 
    END-IF.