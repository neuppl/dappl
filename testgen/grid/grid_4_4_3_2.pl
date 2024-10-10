0.1 :: f28 .
0.1 :: f29 .
0.1 :: f30 .
r31 :- f28, f29, f30 .
utility( r31 , 1 ).
query( r31 ).
? :: c33 .
? :: c32 .
r34 :- f28, f29, not(f30), c33 .
utility( r34 , 0 ).
query( r34 ).
r35 :- f28, f29, not(f30), c32 .
utility( r35 , 1 ).
query( r35 ).
? :: c37 .
? :: c36 .
0.1 :: f38 .
r39 :- f28, not(f29), c37, f38 .
utility( r39 , 1 ).
query( r39 ).
? :: c41 .
? :: c40 .
r42 :- f28, not(f29), c37, not(f38), c41 .
utility( r42 , 0 ).
query( r42 ).
r43 :- f28, not(f29), c37, not(f38), c40 .
utility( r43 , 1 ).
query( r43 ).
0.1 :: f44 .
r45 :- f28, not(f29), c36, f44 .
utility( r45 , 0 ).
query( r45 ).
? :: c48 .
? :: c47 .
? :: c46 .
r49 :- f28, not(f29), c36, not(f44), c48 .
utility( r49 , 1 ).
query( r49 ).
r50 :- f28, not(f29), c36, not(f44), c47 .
utility( r50 , 0 ).
query( r50 ).
r51 :- f28, not(f29), c36, not(f44), c46 .
utility( r51 , 0 ).
query( r51 ).
? :: c53 .
? :: c52 .
0.1 :: f54 .
0.1 :: f55 .
r56 :- not(f28), c53, f54, f55 .
utility( r56 , 1 ).
query( r56 ).
? :: c58 .
? :: c57 .
r59 :- not(f28), c53, f54, not(f55), c58 .
utility( r59 , 0 ).
query( r59 ).
r60 :- not(f28), c53, f54, not(f55), c57 .
utility( r60 , 1 ).
query( r60 ).
? :: c61 .
0.1 :: f62 .
r63 :- not(f28), c53, not(f54), c61, f62 .
utility( r63 , 0 ).
query( r63 ).
? :: c65 .
? :: c64 .
r66 :- not(f28), c53, not(f54), c61, not(f62), c65 .
utility( r66 , 0 ).
query( r66 ).
r67 :- not(f28), c53, not(f54), c61, not(f62), c64 .
utility( r67 , 1 ).
query( r67 ).
0.1 :: f68 .
0.1 :: f69 .
r70 :- not(f28), c52, f68, f69 .
utility( r70 , 1 ).
query( r70 ).
? :: c73 .
? :: c72 .
? :: c71 .
r74 :- not(f28), c52, f68, not(f69), c73 .
utility( r74 , 1 ).
query( r74 ).
r75 :- not(f28), c52, f68, not(f69), c72 .
utility( r75 , 0 ).
query( r75 ).
r76 :- not(f28), c52, f68, not(f69), c71 .
utility( r76 , 0 ).
query( r76 ).
? :: c78 .
? :: c77 .
0.1 :: f79 .
r80 :- not(f28), c52, not(f68), c78, f79 .
utility( r80 , 1 ).
query( r80 ).
? :: c82 .
? :: c81 .
r83 :- not(f28), c52, not(f68), c78, not(f79), c82 .
utility( r83 , 0 ).
query( r83 ).
r84 :- not(f28), c52, not(f68), c78, not(f79), c81 .
utility( r84 , 1 ).
query( r84 ).
0.1 :: f85 .
r86 :- not(f28), c52, not(f68), c77, f85 .
utility( r86 , 0 ).
query( r86 ).
? :: c89 .
? :: c88 .
? :: c87 .
r90 :- not(f28), c52, not(f68), c77, not(f85), c89 .
utility( r90 , 1 ).
query( r90 ).
r91 :- not(f28), c52, not(f68), c77, not(f85), c88 .
utility( r91 , 0 ).
query( r91 ).
r92 :- not(f28), c52, not(f68), c77, not(f85), c87 .
utility( r92 , 0 ).
query( r92 ).
