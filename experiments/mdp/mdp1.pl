0.32172344106784706 :: f2 .
? :: c5 .
? :: c4 .
? :: c3 .
r8 :- f2, not(c3), not(c4), c5 .
utility( r8 , 41 ).
r7 :- f2, not(c3), c4, not(c5) .
utility( r7 , 82 ).
r6 :- f2, c3, not(c4), not(c5) .
utility( r6 , 85 ).
query( c5 ).
query( c4 ).
query( c3 ).
r1 :- not(f2) .
utility( r1 , 44 ).
