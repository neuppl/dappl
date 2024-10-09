0.1 :: f80 .
0.1 :: f81 .
r82 :- f80, f81 .
utility( r82 , 0 ).
query( r82 ).
? :: c83 .
r84 :- f80, not(f81), c83 .
utility( r84 , 0 ).
query( r84 ).
? :: c86 .
? :: c85 .
0.1 :: f87 .
r88 :- not(f80), c86, f87 .
utility( r88 , 0 ).
query( r88 ).
? :: c89 .
r90 :- not(f80), c86, not(f87), c89 .
utility( r90 , 0 ).
query( r90 ).
0.1 :: f91 .
r92 :- not(f80), c85, f91 .
utility( r92 , 0 ).
query( r92 ).
? :: c93 .
r94 :- not(f80), c85, not(f91), c93 .
utility( r94 , 0 ).
query( r94 ).
