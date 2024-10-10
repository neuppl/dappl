0.1 :: f12 .
0.1 :: f13 .
r14 :- f12, f13 .
utility( r14 , 0 ).
query( r14 ).
? :: c16 .
? :: c15 .
r17 :- f12, not(f13), c16 .
utility( r17 , 0 ).
query( r17 ).
r18 :- f12, not(f13), c15 .
utility( r18 , 0 ).
query( r18 ).
? :: c20 .
? :: c19 .
0.1 :: f21 .
r22 :- not(f12), c20, f21 .
utility( r22 , 0 ).
query( r22 ).
? :: c24 .
? :: c23 .
r25 :- not(f12), c20, not(f21), c24 .
utility( r25 , 0 ).
query( r25 ).
r26 :- not(f12), c20, not(f21), c23 .
utility( r26 , 0 ).
query( r26 ).
0.1 :: f27 .
r28 :- not(f12), c19, f27 .
utility( r28 , 0 ).
query( r28 ).
? :: c30 .
? :: c29 .
r31 :- not(f12), c19, not(f27), c30 .
utility( r31 , 0 ).
query( r31 ).
r32 :- not(f12), c19, not(f27), c29 .
utility( r32 , 0 ).
query( r32 ).
