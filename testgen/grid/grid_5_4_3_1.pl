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
0.1 :: f7 .
r8 :- f1, not(f2), c4, f7 .
utility( r8 , 0 ).
query( r8 ).
? :: c9 .
r10 :- f1, not(f2), c4, not(f7), c9 .
utility( r10 , 0 ).
query( r10 ).
? :: c13 .
? :: c12 .
? :: c11 .
0.1 :: f14 .
r15 :- not(f1), c13, f14 .
utility( r15 , 0 ).
query( r15 ).
? :: c17 .
? :: c16 .
r18 :- not(f1), c13, not(f14), c17 .
utility( r18 , 0 ).
query( r18 ).
0.1 :: f19 .
r20 :- not(f1), c13, not(f14), c16, f19 .
utility( r20 , 0 ).
query( r20 ).
? :: c21 .
r22 :- not(f1), c13, not(f14), c16, not(f19), c21 .
utility( r22 , 0 ).
query( r22 ).
0.1 :: f23 .
0.1 :: f24 .
r25 :- not(f1), c12, f23, f24 .
utility( r25 , 0 ).
query( r25 ).
? :: c26 .
r27 :- not(f1), c12, f23, not(f24), c26 .
utility( r27 , 0 ).
query( r27 ).
? :: c29 .
? :: c28 .
0.1 :: f30 .
r31 :- not(f1), c12, not(f23), c29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c32 .
r33 :- not(f1), c12, not(f23), c29, not(f30), c32 .
utility( r33 , 0 ).
query( r33 ).
0.1 :: f34 .
r35 :- not(f1), c12, not(f23), c28, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
r38 :- not(f1), c12, not(f23), c28, not(f34), c37 .
utility( r38 , 0 ).
query( r38 ).
r39 :- not(f1), c12, not(f23), c28, not(f34), c36 .
utility( r39 , 0 ).
query( r39 ).
0.1 :: f40 .
0.1 :: f41 .
r42 :- not(f1), c11, f40, f41 .
utility( r42 , 0 ).
query( r42 ).
? :: c44 .
? :: c43 .
r45 :- not(f1), c11, f40, not(f41), c44 .
utility( r45 , 0 ).
query( r45 ).
r46 :- not(f1), c11, f40, not(f41), c43 .
utility( r46 , 0 ).
query( r46 ).
? :: c48 .
? :: c47 .
0.1 :: f49 .
r50 :- not(f1), c11, not(f40), c48, f49 .
utility( r50 , 0 ).
query( r50 ).
? :: c51 .
r52 :- not(f1), c11, not(f40), c48, not(f49), c51 .
utility( r52 , 0 ).
query( r52 ).
0.1 :: f53 .
r54 :- not(f1), c11, not(f40), c47, f53 .
utility( r54 , 0 ).
query( r54 ).
? :: c56 .
? :: c55 .
r57 :- not(f1), c11, not(f40), c47, not(f53), c56 .
utility( r57 , 0 ).
query( r57 ).
r58 :- not(f1), c11, not(f40), c47, not(f53), c55 .
utility( r58 , 0 ).
query( r58 ).
