0.1 :: f1 .
0.1 :: f2 .
r3 :- f1, f2 .
utility( r3 , 0 ).
query( r3 ).
? :: c5 .
? :: c4 .
r6 :- f1, not(f2), c5 .
utility( r6 , 0 ).
query( r6 ).
r7 :- f1, not(f2), c4 .
utility( r7 , 0 ).
query( r7 ).
? :: c10 .
? :: c9 .
? :: c8 .
0.1 :: f11 .
r12 :- not(f1), c10, f11 .
utility( r12 , 0 ).
query( r12 ).
? :: c14 .
? :: c13 .
r15 :- not(f1), c10, not(f11), c14 .
utility( r15 , 0 ).
query( r15 ).
r16 :- not(f1), c10, not(f11), c13 .
utility( r16 , 0 ).
query( r16 ).
0.1 :: f17 .
r18 :- not(f1), c9, f17 .
utility( r18 , 0 ).
query( r18 ).
? :: c19 .
r20 :- not(f1), c9, not(f17), c19 .
utility( r20 , 0 ).
query( r20 ).
0.1 :: f21 .
r22 :- not(f1), c8, f21 .
utility( r22 , 0 ).
query( r22 ).
? :: c25 .
? :: c24 .
? :: c23 .
r26 :- not(f1), c8, not(f21), c25 .
utility( r26 , 0 ).
query( r26 ).
r27 :- not(f1), c8, not(f21), c24 .
utility( r27 , 0 ).
query( r27 ).
r28 :- not(f1), c8, not(f21), c23 .
utility( r28 , 0 ).
query( r28 ).
