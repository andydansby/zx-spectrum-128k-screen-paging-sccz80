10 CLEAR VAL "24399"
20 POKE 23739,111
30 BORDER VAL "0": PAPER VAL "0"
40 LET A = VAL "25000": LET B = A + VAL "2": LET C = VAL "32768": LET D = VAL "25050"
50 LOAD""SCREEN$
60 LOAD"ass"CODE A
70 LOAD ""CODE C
80 POKE A, 1
90 RANDOMIZE USR B
100 LOAD ""CODE D
110 RANDOMIZE USR D