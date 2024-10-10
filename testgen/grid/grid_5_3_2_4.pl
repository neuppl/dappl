0.1 :: f61 .
0.1 :: f62 .
r63 :- f61, f62 .
utility( r63 , 0 ).
query( r63 ).
? :: c65 .
? :: c64 .
r66 :- f61, not(f62), c65 .
utility( r66 , 0 ).
query( r66 ).
r67 :- f61, not(f62), c64 .
utility( r67 , 0 ).
query( r67 ).
? :: c70 .
? :: c69 .
? :: c68 .
0.1 :: f71 .
r72 :- not(f61), c70, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c74 .
? :: c73 .
r75 :- not(f61), c70, not(f71), c74 .
utility( r75 , 0 ).
query( r75 ).
r76 :- not(f61), c70, not(f71), c73 .
utility( r76 , 0 ).
query( r76 ).
0.1 :: f77 .
r78 :- not(f61), c69, f77 .
utility( r78 , 0 ).
query( r78 ).
? :: c80 .
? :: c79 .
r81 :- not(f61), c69, not(f77), c80 .
utility( r81 , 0 ).
query( r81 ).
r82 :- not(f61), c69, not(f77), c79 .
utility( r82 , 0 ).
query( r82 ).
0.1 :: f83 .
r84 :- not(f61), c68, f83 .
utility( r84 , 0 ).
query( r84 ).
? :: c86 .
? :: c85 .
r87 :- not(f61), c68, not(f83), c86 .
utility( r87 , 0 ).
query( r87 ).
r88 :- not(f61), c68, not(f83), c85 .
utility( r88 , 0 ).
query( r88 ).
