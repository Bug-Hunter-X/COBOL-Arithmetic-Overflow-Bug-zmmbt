01  WS-AREA. 
    05  WS-VAR1 PIC 9(5) VALUE 0. 
    05  WS-VAR2 PIC 9(5) VALUE 0. 
    05 WS-OVERFLOW-FLAG PIC 9 VALUE 0. 

* ... some other code ...

    ADD 1 TO WS-VAR1.
    IF WS-VAR1 > 99999 THEN 
       MOVE 1 TO WS-OVERFLOW-FLAG 
       DISPLAY "Warning: WS-VAR1 exceeded maximum value" 
    END-IF.
    ADD 1 TO WS-VAR2.
    IF WS-VAR2 > 99999 THEN 
       MOVE 1 TO WS-OVERFLOW-FLAG 
       DISPLAY "Warning: WS-VAR2 exceeded maximum value" 
    END-IF.

    IF WS-OVERFLOW-FLAG = 1 THEN
        DISPLAY "One or more variables exceeded maximum value. Program will continue with possible data corruption."
    END-IF.