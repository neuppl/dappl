0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
r4 :- f1, f2, f3 .
utility( r4 , 0 ).
query( r4 ).
? :: c5 .
r6 :- f1, f2, not(f3), c5 .
utility( r6 , 0 ).
query( r6 ).
? :: c8 .
? :: c7 .
0.1 :: f9 .
r10 :- f1, not(f2), c8, f9 .
utility( r10 , 0 ).
query( r10 ).
? :: c11 .
r12 :- f1, not(f2), c8, not(f9), c11 .
utility( r12 , 0 ).
query( r12 ).
0.1 :: f13 .
r14 :- f1, not(f2), c7, f13 .
utility( r14 , 0 ).
query( r14 ).
? :: c16 .
? :: c15 .
r17 :- f1, not(f2), c7, not(f13), c16 .
utility( r17 , 0 ).
query( r17 ).
r18 :- f1, not(f2), c7, not(f13), c15 .
utility( r18 , 0 ).
query( r18 ).
? :: c20 .
? :: c19 .
0.1 :: f21 .
0.1 :: f22 .
r23 :- not(f1), c20, f21, f22 .
utility( r23 , 0 ).
query( r23 ).
? :: c25 .
? :: c24 .
r26 :- not(f1), c20, f21, not(f22), c25 .
utility( r26 , 0 ).
query( r26 ).
r27 :- not(f1), c20, f21, not(f22), c24 .
utility( r27 , 0 ).
query( r27 ).
? :: c29 .
? :: c28 .
0.1 :: f30 .
r31 :- not(f1), c20, not(f21), c29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c32 .
r33 :- not(f1), c20, not(f21), c29, not(f30), c32 .
utility( r33 , 0 ).
query( r33 ).
0.1 :: f34 .
r35 :- not(f1), c20, not(f21), c28, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
r38 :- not(f1), c20, not(f21), c28, not(f34), c37 .
utility( r38 , 0 ).
query( r38 ).
r39 :- not(f1), c20, not(f21), c28, not(f34), c36 .
utility( r39 , 0 ).
query( r39 ).
0.1 :: f40 .
0.1 :: f41 .
r42 :- not(f1), c19, f40, f41 .
utility( r42 , 0 ).
query( r42 ).
? :: c44 .
? :: c43 .
r45 :- not(f1), c19, f40, not(f41), c44 .
utility( r45 , 0 ).
query( r45 ).
r46 :- not(f1), c19, f40, not(f41), c43 .
utility( r46 , 0 ).
query( r46 ).
? :: c47 .
0.1 :: f48 .
r49 :- not(f1), c19, not(f40), c47, f48 .
utility( r49 , 0 ).
query( r49 ).
? :: c51 .
? :: c50 .
r52 :- not(f1), c19, not(f40), c47, not(f48), c51 .
utility( r52 , 0 ).
query( r52 ).
r53 :- not(f1), c19, not(f40), c47, not(f48), c50 .
utility( r53 , 0 ).
query( r53 ).
