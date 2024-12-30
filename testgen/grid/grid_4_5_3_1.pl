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
0.1 :: f13 .
r14 :- not(f1), c6, f12, f13 .
utility( r14 , 0 ).
query( r14 ).
? :: c15 .
r16 :- not(f1), c6, f12, not(f13), c15 .
utility( r16 , 0 ).
query( r16 ).
? :: c17 .
0.1 :: f18 .
r19 :- not(f1), c6, not(f12), c17, f18 .
utility( r19 , 0 ).
query( r19 ).
? :: c20 .
r21 :- not(f1), c6, not(f12), c17, not(f18), c20 .
utility( r21 , 0 ).
query( r21 ).
