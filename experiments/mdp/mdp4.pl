0.67399547680489058 :: f19 .
? :: c24 .
? :: c23 .
? :: c22 .
? :: c21 .
? :: c20 .
r29 :- f19, not(c20), not(c21), not(c22), not(c23), c24 .
utility( r29 , 49 ).
r28 :- f19, not(c20), not(c21), not(c22), c23, not(c24) .
utility( r28 , 85 ).
r27 :- f19, not(c20), not(c21), c22, not(c23), not(c24) .
utility( r27 , 17 ).
r26 :- f19, not(c20), c21, not(c22), not(c23), not(c24) .
utility( r26 , 70 ).
r25 :- f19, c20, not(c21), not(c22), not(c23), not(c24) .
utility( r25 , 21 ).
query( c24 ).
query( c23 ).
query( c22 ).
query( c21 ).
query( c20 ).
0.78435865007230765 :: f14 .
? :: c16 .
? :: c15 .
r18 :- not(f19), f14, not(c15), c16 .
utility( r18 , 20 ).
r17 :- not(f19), f14, c15, not(c16) .
utility( r17 , 4 ).
query( c16 ).
query( c15 ).
0.66507712584402734 :: f9 .
? :: c11 .
? :: c10 .
r13 :- not(f19), not(f14), f9, not(c10), c11 .
utility( r13 , 0 ).
r12 :- not(f19), not(f14), f9, c10, not(c11) .
utility( r12 , 39 ).
query( c11 ).
query( c10 ).
0.32172344106784706 :: f2 .
? :: c5 .
? :: c4 .
? :: c3 .
r8 :- not(f19), not(f14), not(f9), f2, not(c3), not(c4), c5 .
utility( r8 , 41 ).
r7 :- not(f19), not(f14), not(f9), f2, not(c3), c4, not(c5) .
utility( r7 , 82 ).
r6 :- not(f19), not(f14), not(f9), f2, c3, not(c4), not(c5) .
utility( r6 , 85 ).
query( c5 ).
query( c4 ).
query( c3 ).
r1 :- not(f19), not(f14), not(f9), not(f2) .
utility( r1 , 44 ).
