0.1 :: f67 .
0.1 :: f68 .
r69 :- f67, f68 .
utility( r69 , 0 ).
query( r69 ).
? :: c70 .
r71 :- f67, not(f68), c70 .
utility( r71 , 0 ).
query( r71 ).
? :: c73 .
? :: c72 .
0.1 :: f74 .
r75 :- not(f67), c73, f74 .
utility( r75 , 0 ).
query( r75 ).
? :: c76 .
r77 :- not(f67), c73, not(f74), c76 .
utility( r77 , 0 ).
query( r77 ).
0.1 :: f78 .
r79 :- not(f67), c72, f78 .
utility( r79 , 0 ).
query( r79 ).
? :: c81 .
? :: c80 .
r82 :- not(f67), c72, not(f78), c81 .
utility( r82 , 0 ).
query( r82 ).
r83 :- not(f67), c72, not(f78), c80 .
utility( r83 , 0 ).
query( r83 ).
