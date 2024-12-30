0.1 :: f74 .
0.1 :: f75 .
r76 :- f74, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c77 .
r78 :- f74, not(f75), c77 .
utility( r78 , 0 ).
query( r78 ).
? :: c81 .
? :: c80 .
? :: c79 .
r82 :- not(f74), c81 .
utility( r82 , 0 ).
query( r82 ).
0.1 :: f83 .
r84 :- not(f74), c80, f83 .
utility( r84 , 0 ).
query( r84 ).
? :: c85 .
r86 :- not(f74), c80, not(f83), c85 .
utility( r86 , 0 ).
query( r86 ).
0.1 :: f87 .
r88 :- not(f74), c79, f87 .
utility( r88 , 0 ).
query( r88 ).
? :: c89 .
r90 :- not(f74), c79, not(f87), c89 .
utility( r90 , 0 ).
query( r90 ).
