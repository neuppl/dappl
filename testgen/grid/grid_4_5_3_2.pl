0.1 :: f22 .
0.1 :: f23 .
0.1 :: f24 .
r25 :- f22, f23, f24 .
utility( r25 , 0 ).
query( r25 ).
? :: c26 .
r27 :- f22, f23, not(f24), c26 .
utility( r27 , 0 ).
query( r27 ).
? :: c29 .
? :: c28 .
0.1 :: f30 .
r31 :- f22, not(f23), c29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c32 .
r33 :- f22, not(f23), c29, not(f30), c32 .
utility( r33 , 0 ).
query( r33 ).
0.1 :: f34 .
r35 :- f22, not(f23), c28, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
r38 :- f22, not(f23), c28, not(f34), c37 .
utility( r38 , 0 ).
query( r38 ).
r39 :- f22, not(f23), c28, not(f34), c36 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
0.1 :: f41 .
0.1 :: f42 .
r43 :- not(f22), c40, f41, f42 .
utility( r43 , 0 ).
query( r43 ).
? :: c45 .
? :: c44 .
r46 :- not(f22), c40, f41, not(f42), c45 .
utility( r46 , 0 ).
query( r46 ).
r47 :- not(f22), c40, f41, not(f42), c44 .
utility( r47 , 0 ).
query( r47 ).
? :: c49 .
? :: c48 .
0.1 :: f50 .
r51 :- not(f22), c40, not(f41), c49, f50 .
utility( r51 , 0 ).
query( r51 ).
? :: c52 .
r53 :- not(f22), c40, not(f41), c49, not(f50), c52 .
utility( r53 , 0 ).
query( r53 ).
0.1 :: f54 .
r55 :- not(f22), c40, not(f41), c48, f54 .
utility( r55 , 0 ).
query( r55 ).
? :: c57 .
? :: c56 .
r58 :- not(f22), c40, not(f41), c48, not(f54), c57 .
utility( r58 , 0 ).
query( r58 ).
r59 :- not(f22), c40, not(f41), c48, not(f54), c56 .
utility( r59 , 0 ).
query( r59 ).
