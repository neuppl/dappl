0.1 :: f16 .
0.1 :: f17 .
0.1 :: f18 .
0.1 :: f19 .
r20 :- f16, f17, f18, f19 .
utility( r20 , 0 ).
query( r20 ).
? :: c21 .
r22 :- f16, f17, f18, not(f19), c21 .
utility( r22 , 0 ).
query( r22 ).
? :: c24 .
? :: c23 .
r25 :- f16, f17, not(f18), c24 .
utility( r25 , 1 ).
query( r25 ).
0.1 :: f26 .
r27 :- f16, f17, not(f18), c23, f26 .
utility( r27 , 0 ).
query( r27 ).
? :: c28 .
r29 :- f16, f17, not(f18), c23, not(f26), c28 .
utility( r29 , 0 ).
query( r29 ).
? :: c30 .
0.1 :: f31 .
r32 :- f16, not(f17), c30, f31 .
utility( r32 , 1 ).
query( r32 ).
? :: c34 .
? :: c33 .
r35 :- f16, not(f17), c30, not(f31), c34 .
utility( r35 , 1 ).
query( r35 ).
0.1 :: f36 .
r37 :- f16, not(f17), c30, not(f31), c33, f36 .
utility( r37 , 0 ).
query( r37 ).
? :: c38 .
r39 :- f16, not(f17), c30, not(f31), c33, not(f36), c38 .
utility( r39 , 0 ).
query( r39 ).
? :: c42 .
? :: c41 .
? :: c40 .
r43 :- not(f16), c42 .
utility( r43 , 0 ).
query( r43 ).
0.1 :: f44 .
0.1 :: f45 .
r46 :- not(f16), c41, f44, f45 .
utility( r46 , 0 ).
query( r46 ).
? :: c47 .
r48 :- not(f16), c41, f44, not(f45), c47 .
utility( r48 , 0 ).
query( r48 ).
? :: c49 .
0.1 :: f50 .
r51 :- not(f16), c41, not(f44), c49, f50 .
utility( r51 , 0 ).
query( r51 ).
? :: c52 .
r53 :- not(f16), c41, not(f44), c49, not(f50), c52 .
utility( r53 , 0 ).
query( r53 ).
0.1 :: f54 .
0.1 :: f55 .
r56 :- not(f16), c40, f54, f55 .
utility( r56 , 1 ).
query( r56 ).
? :: c58 .
? :: c57 .
r59 :- not(f16), c40, f54, not(f55), c58 .
utility( r59 , 1 ).
query( r59 ).
0.1 :: f60 .
r61 :- not(f16), c40, f54, not(f55), c57, f60 .
utility( r61 , 0 ).
query( r61 ).
? :: c62 .
r63 :- not(f16), c40, f54, not(f55), c57, not(f60), c62 .
utility( r63 , 0 ).
query( r63 ).
? :: c64 .
0.1 :: f65 .
0.1 :: f66 .
r67 :- not(f16), c40, not(f54), c64, f65, f66 .
utility( r67 , 0 ).
query( r67 ).
? :: c68 .
r69 :- not(f16), c40, not(f54), c64, f65, not(f66), c68 .
utility( r69 , 0 ).
query( r69 ).
? :: c71 .
? :: c70 .
r72 :- not(f16), c40, not(f54), c64, not(f65), c71 .
utility( r72 , 1 ).
query( r72 ).
0.1 :: f73 .
r74 :- not(f16), c40, not(f54), c64, not(f65), c70, f73 .
utility( r74 , 0 ).
query( r74 ).
? :: c75 .
r76 :- not(f16), c40, not(f54), c64, not(f65), c70, not(f73), c75 .
utility( r76 , 0 ).
query( r76 ).
