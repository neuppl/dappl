0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
0.1 :: f4 .
r5 :- f1, f2, f3, f4 .
utility( r5 , 0 ).
query( r5 ).
? :: c7 .
? :: c6 .
r8 :- f1, f2, f3, not(f4), c7 .
utility( r8 , 0 ).
query( r8 ).
r9 :- f1, f2, f3, not(f4), c6 .
utility( r9 , 0 ).
query( r9 ).
? :: c11 .
? :: c10 .
0.1 :: f12 .
r13 :- f1, f2, not(f3), c11, f12 .
utility( r13 , 0 ).
query( r13 ).
? :: c15 .
? :: c14 .
r16 :- f1, f2, not(f3), c11, not(f12), c15 .
utility( r16 , 0 ).
query( r16 ).
r17 :- f1, f2, not(f3), c11, not(f12), c14 .
utility( r17 , 0 ).
query( r17 ).
r18 :- f1, f2, not(f3), c10 .
utility( r18 , 1 ).
query( r18 ).
? :: c20 .
? :: c19 .
0.1 :: f21 .
0.1 :: f22 .
r23 :- f1, not(f2), c20, f21, f22 .
utility( r23 , 0 ).
query( r23 ).
? :: c25 .
? :: c24 .
r26 :- f1, not(f2), c20, f21, not(f22), c25 .
utility( r26 , 0 ).
query( r26 ).
r27 :- f1, not(f2), c20, f21, not(f22), c24 .
utility( r27 , 0 ).
query( r27 ).
? :: c29 .
? :: c28 .
0.1 :: f30 .
r31 :- f1, not(f2), c20, not(f21), c29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c33 .
? :: c32 .
r34 :- f1, not(f2), c20, not(f21), c29, not(f30), c33 .
utility( r34 , 0 ).
query( r34 ).
r35 :- f1, not(f2), c20, not(f21), c29, not(f30), c32 .
utility( r35 , 0 ).
query( r35 ).
r36 :- f1, not(f2), c20, not(f21), c28 .
utility( r36 , 1 ).
query( r36 ).
0.1 :: f37 .
r38 :- f1, not(f2), c19, f37 .
utility( r38 , 1 ).
query( r38 ).
? :: c40 .
? :: c39 .
r41 :- f1, not(f2), c19, not(f37), c40 .
utility( r41 , 1 ).
query( r41 ).
0.1 :: f42 .
r43 :- f1, not(f2), c19, not(f37), c39, f42 .
utility( r43 , 0 ).
query( r43 ).
? :: c44 .
r45 :- f1, not(f2), c19, not(f37), c39, not(f42), c44 .
utility( r45 , 0 ).
query( r45 ).
? :: c46 .
0.1 :: f47 .
0.1 :: f48 .
0.1 :: f49 .
r50 :- not(f1), c46, f47, f48, f49 .
utility( r50 , 0 ).
query( r50 ).
? :: c51 .
r52 :- not(f1), c46, f47, f48, not(f49), c51 .
utility( r52 , 0 ).
query( r52 ).
? :: c54 .
? :: c53 .
r55 :- not(f1), c46, f47, not(f48), c54 .
utility( r55 , 1 ).
query( r55 ).
0.1 :: f56 .
r57 :- not(f1), c46, f47, not(f48), c53, f56 .
utility( r57 , 0 ).
query( r57 ).
? :: c58 .
r59 :- not(f1), c46, f47, not(f48), c53, not(f56), c58 .
utility( r59 , 0 ).
query( r59 ).
? :: c61 .
? :: c60 .
0.1 :: f62 .
0.1 :: f63 .
r64 :- not(f1), c46, not(f47), c61, f62, f63 .
utility( r64 , 0 ).
query( r64 ).
? :: c66 .
? :: c65 .
r67 :- not(f1), c46, not(f47), c61, f62, not(f63), c66 .
utility( r67 , 0 ).
query( r67 ).
r68 :- not(f1), c46, not(f47), c61, f62, not(f63), c65 .
utility( r68 , 0 ).
query( r68 ).
? :: c70 .
? :: c69 .
0.1 :: f71 .
r72 :- not(f1), c46, not(f47), c61, not(f62), c70, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c74 .
? :: c73 .
r75 :- not(f1), c46, not(f47), c61, not(f62), c70, not(f71), c74 .
utility( r75 , 0 ).
query( r75 ).
r76 :- not(f1), c46, not(f47), c61, not(f62), c70, not(f71), c73 .
utility( r76 , 0 ).
query( r76 ).
r77 :- not(f1), c46, not(f47), c61, not(f62), c69 .
utility( r77 , 1 ).
query( r77 ).
0.1 :: f78 .
r79 :- not(f1), c46, not(f47), c60, f78 .
utility( r79 , 1 ).
query( r79 ).
? :: c81 .
? :: c80 .
r82 :- not(f1), c46, not(f47), c60, not(f78), c81 .
utility( r82 , 1 ).
query( r82 ).
0.1 :: f83 .
r84 :- not(f1), c46, not(f47), c60, not(f78), c80, f83 .
utility( r84 , 0 ).
query( r84 ).
? :: c85 .
r86 :- not(f1), c46, not(f47), c60, not(f78), c80, not(f83), c85 .
utility( r86 , 0 ).
query( r86 ).
