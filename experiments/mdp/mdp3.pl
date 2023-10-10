0.78435865007230765 :: f14 .
? :: c16 .
? :: c15 .
r18 :- f14, not(c15), c16 .
utility( r18 , 12 ).
r17 :- f14, c15, not(c16) .
utility( r17 , 15 ).
query( c16 ).
query( c15 ).
0.66507712584402734 :: f9 .
? :: c11 .
? :: c10 .
r13 :- not(f14), f9, not(c10), c11 .
utility( r13 , 78 ).
r12 :- not(f14), f9, c10, not(c11) .
utility( r12 , 49 ).
query( c11 ).
query( c10 ).
0.32172344106784706 :: f2 .
? :: c5 .
? :: c4 .
? :: c3 .
r8 :- not(f14), not(f9), f2, not(c3), not(c4), c5 .
utility( r8 , 85 ).
r7 :- not(f14), not(f9), f2, not(c3), c4, not(c5) .
utility( r7 , 17 ).
r6 :- not(f14), not(f9), f2, c3, not(c4), not(c5) .
utility( r6 , 70 ).
query( c5 ).
query( c4 ).
query( c3 ).
r1 :- not(f14), not(f9), not(f2) .
utility( r1 , 21 ).
