0.1 :: f1 .
0.1 :: f2 .
r3 :- f1, f2 .
utility( r3 , 0 ).
query( r3 ).
? :: c4 .
r5 :- f1, not(f2), c4 .
utility( r5 , 0 ).
query( r5 ).
? :: c7 .
? :: c6 .
0.1 :: f8 .
r9 :- not(f1), c7, f8 .
utility( r9 , 0 ).
query( r9 ).
? :: c10 .
r11 :- not(f1), c7, not(f8), c10 .
utility( r11 , 0 ).
query( r11 ).
0.1 :: f12 .
r13 :- not(f1), c6, f12 .
utility( r13 , 0 ).
query( r13 ).
? :: c16 .
? :: c15 .
? :: c14 .
0.1 :: f17 .
r18 :- not(f1), c6, not(f12), c16, f17 .
utility( r18 , 1 ).
query( r18 ).
? :: c20 .
? :: c19 .
r21 :- not(f1), c6, not(f12), c16, not(f17), c20 .
utility( r21 , 0 ).
query( r21 ).
r22 :- not(f1), c6, not(f12), c16, not(f17), c19 .
utility( r22 , 1 ).
query( r22 ).
r23 :- not(f1), c6, not(f12), c15 .
utility( r23 , 0 ).
query( r23 ).
0.1 :: f24 .
r25 :- not(f1), c6, not(f12), c14, f24 .
utility( r25 , 1 ).
query( r25 ).
? :: c26 .
r27 :- not(f1), c6, not(f12), c14, not(f24), c26 .
utility( r27 , 1 ).
query( r27 ).
