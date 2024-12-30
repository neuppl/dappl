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
? :: c12 .
? :: c11 .
r13 :- f1, not(f2), c8, not(f9), c12 .
utility( r13 , 0 ).
query( r13 ).
r14 :- f1, not(f2), c8, not(f9), c11 .
utility( r14 , 0 ).
query( r14 ).
0.1 :: f15 .
r16 :- f1, not(f2), c7, f15 .
utility( r16 , 0 ).
query( r16 ).
? :: c17 .
r18 :- f1, not(f2), c7, not(f15), c17 .
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
? :: c33 .
? :: c32 .
r34 :- not(f1), c20, not(f21), c29, not(f30), c33 .
utility( r34 , 0 ).
query( r34 ).
r35 :- not(f1), c20, not(f21), c29, not(f30), c32 .
utility( r35 , 0 ).
query( r35 ).
0.1 :: f36 .
r37 :- not(f1), c20, not(f21), c28, f36 .
utility( r37 , 0 ).
query( r37 ).
? :: c38 .
r39 :- not(f1), c20, not(f21), c28, not(f36), c38 .
utility( r39 , 0 ).
query( r39 ).
0.1 :: f40 .
0.1 :: f41 .
r42 :- not(f1), c19, f40, f41 .
utility( r42 , 0 ).
query( r42 ).
? :: c43 .
r44 :- not(f1), c19, f40, not(f41), c43 .
utility( r44 , 0 ).
query( r44 ).
? :: c46 .
? :: c45 .
0.1 :: f47 .
r48 :- not(f1), c19, not(f40), c46, f47 .
utility( r48 , 0 ).
query( r48 ).
? :: c49 .
r50 :- not(f1), c19, not(f40), c46, not(f47), c49 .
utility( r50 , 0 ).
query( r50 ).
0.1 :: f51 .
r52 :- not(f1), c19, not(f40), c45, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c53 .
r54 :- not(f1), c19, not(f40), c45, not(f51), c53 .
utility( r54 , 0 ).
query( r54 ).
