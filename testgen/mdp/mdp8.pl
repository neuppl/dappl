0.76317234441615656 :: f55 .
? :: c60 .
? :: c59 .
? :: c58 .
? :: c57 .
? :: c56 .
r65 :- f55, not(c56), not(c57), not(c58), not(c59), c60 .
utility( r65 , 0 ).
r64 :- f55, not(c56), not(c57), not(c58), c59, not(c60) .
utility( r64 , 3 ).
r63 :- f55, not(c56), not(c57), c58, not(c59), not(c60) .
utility( r63 , 96 ).
r62 :- f55, not(c56), c57, not(c58), not(c59), not(c60) .
utility( r62 , 44 ).
r61 :- f55, c56, not(c57), not(c58), not(c59), not(c60) .
utility( r61 , 23 ).
query( c60 ).
query( c59 ).
query( c58 ).
query( c57 ).
query( c56 ).
0.62925143901961378 :: f46 .
? :: c50 .
? :: c49 .
? :: c48 .
? :: c47 .
r54 :- not(f55), f46, not(c47), not(c48), not(c49), c50 .
utility( r54 , 23 ).
r53 :- not(f55), f46, not(c47), not(c48), c49, not(c50) .
utility( r53 , 14 ).
r52 :- not(f55), f46, not(c47), c48, not(c49), not(c50) .
utility( r52 , 93 ).
r51 :- not(f55), f46, c47, not(c48), not(c49), not(c50) .
utility( r51 , 89 ).
query( c50 ).
query( c49 ).
query( c48 ).
query( c47 ).
0.35179904572186588 :: f35 .
? :: c40 .
? :: c39 .
? :: c38 .
? :: c37 .
? :: c36 .
r45 :- not(f55), not(f46), f35, not(c36), not(c37), not(c38), not(c39), c40 .
utility( r45 , 69 ).
r44 :- not(f55), not(f46), f35, not(c36), not(c37), not(c38), c39, not(c40) .
utility( r44 , 28 ).
r43 :- not(f55), not(f46), f35, not(c36), not(c37), c38, not(c39), not(c40) .
utility( r43 , 6 ).
r42 :- not(f55), not(f46), f35, not(c36), c37, not(c38), not(c39), not(c40) .
utility( r42 , 1 ).
r41 :- not(f55), not(f46), f35, c36, not(c37), not(c38), not(c39), not(c40) .
utility( r41 , 12 ).
query( c40 ).
query( c39 ).
query( c38 ).
query( c37 ).
query( c36 ).
0.91051862764638747 :: f30 .
? :: c32 .
? :: c31 .
r34 :- not(f55), not(f46), not(f35), f30, not(c31), c32 .
utility( r34 , 15 ).
r33 :- not(f55), not(f46), not(f35), f30, c31, not(c32) .
utility( r33 , 78 ).
query( c32 ).
query( c31 ).
0.67399547680489058 :: f19 .
? :: c24 .
? :: c23 .
? :: c22 .
? :: c21 .
? :: c20 .
r29 :- not(f55), not(f46), not(f35), not(f30), f19, not(c20), not(c21), not(c22), not(c23), c24 .
utility( r29 , 49 ).
r28 :- not(f55), not(f46), not(f35), not(f30), f19, not(c20), not(c21), not(c22), c23, not(c24) .
utility( r28 , 85 ).
r27 :- not(f55), not(f46), not(f35), not(f30), f19, not(c20), not(c21), c22, not(c23), not(c24) .
utility( r27 , 17 ).
r26 :- not(f55), not(f46), not(f35), not(f30), f19, not(c20), c21, not(c22), not(c23), not(c24) .
utility( r26 , 70 ).
r25 :- not(f55), not(f46), not(f35), not(f30), f19, c20, not(c21), not(c22), not(c23), not(c24) .
utility( r25 , 21 ).
query( c24 ).
query( c23 ).
query( c22 ).
query( c21 ).
query( c20 ).
0.78435865007230765 :: f14 .
? :: c16 .
? :: c15 .
r18 :- not(f55), not(f46), not(f35), not(f30), not(f19), f14, not(c15), c16 .
utility( r18 , 20 ).
r17 :- not(f55), not(f46), not(f35), not(f30), not(f19), f14, c15, not(c16) .
utility( r17 , 4 ).
query( c16 ).
query( c15 ).
0.66507712584402734 :: f9 .
? :: c11 .
? :: c10 .
r13 :- not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), f9, not(c10), c11 .
utility( r13 , 0 ).
r12 :- not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), f9, c10, not(c11) .
utility( r12 , 39 ).
query( c11 ).
query( c10 ).
0.32172344106784706 :: f2 .
? :: c5 .
? :: c4 .
? :: c3 .
r8 :- not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), not(f9), f2, not(c3), not(c4), c5 .
utility( r8 , 41 ).
r7 :- not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), not(f9), f2, not(c3), c4, not(c5) .
utility( r7 , 82 ).
r6 :- not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), not(f9), f2, c3, not(c4), not(c5) .
utility( r6 , 85 ).
query( c5 ).
query( c4 ).
query( c3 ).
r1 :- not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), not(f9), not(f2) .
utility( r1 , 44 ).
