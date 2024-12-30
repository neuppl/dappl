0.1 :: f60 .
r61 :- f60 .
utility( r61 , 0 ).
query( r61 ).
? :: c64 .
? :: c63 .
? :: c62 .
r65 :- not(f60), c64 .
utility( r65 , 0 ).
query( r65 ).
r66 :- not(f60), c63 .
utility( r66 , 0 ).
query( r66 ).
0.1 :: f67 .
0.1 :: f68 .
r69 :- not(f60), c62, f67, f68 .
utility( r69 , 0 ).
query( r69 ).
? :: c72 .
? :: c71 .
? :: c70 .
r73 :- not(f60), c62, f67, not(f68), c72 .
utility( r73 , 1 ).
query( r73 ).
r74 :- not(f60), c62, f67, not(f68), c71 .
utility( r74 , 0 ).
query( r74 ).
r75 :- not(f60), c62, f67, not(f68), c70 .
utility( r75 , 0 ).
query( r75 ).
? :: c76 .
0.1 :: f77 .
r78 :- not(f60), c62, not(f67), c76, f77 .
utility( r78 , 1 ).
query( r78 ).
? :: c81 .
? :: c80 .
? :: c79 .
r82 :- not(f60), c62, not(f67), c76, not(f77), c81 .
utility( r82 , 1 ).
query( r82 ).
r83 :- not(f60), c62, not(f67), c76, not(f77), c80 .
utility( r83 , 0 ).
query( r83 ).
r84 :- not(f60), c62, not(f67), c76, not(f77), c79 .
utility( r84 , 0 ).
query( r84 ).
