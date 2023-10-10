0.66507712584402734 :: f9 .
? :: c11 .
? :: c10 .
r13 :- f9, not(c10), c11 .
utility( r13 , 85 ).
r12 :- f9, c10, not(c11) .
utility( r12 , 17 ).
query( c11 ).
query( c10 ).
0.32172344106784706 :: f2 .
? :: c5 .
? :: c4 .
? :: c3 .
r8 :- not(f9), f2, not(c3), not(c4), c5 .
utility( r8 , 70 ).
r7 :- not(f9), f2, not(c3), c4, not(c5) .
utility( r7 , 21 ).
r6 :- not(f9), f2, c3, not(c4), not(c5) .
utility( r6 , 20 ).
query( c5 ).
query( c4 ).
query( c3 ).
r1 :- not(f9), not(f2) .
utility( r1 , 4 ).
