0.1 :: f51 .
0.1 :: f52 .
0.1 :: f53 .
r54 :- f51, f52, f53 .
utility( r54 , 0 ).
query( r54 ).
? :: c56 .
? :: c55 .
r57 :- f51, f52, not(f53), c56 .
utility( r57 , 0 ).
query( r57 ).
r58 :- f51, f52, not(f53), c55 .
utility( r58 , 0 ).
query( r58 ).
? :: c59 .
0.1 :: f60 .
r61 :- f51, not(f52), c59, f60 .
utility( r61 , 0 ).
query( r61 ).
? :: c63 .
? :: c62 .
r64 :- f51, not(f52), c59, not(f60), c63 .
utility( r64 , 0 ).
query( r64 ).
r65 :- f51, not(f52), c59, not(f60), c62 .
utility( r65 , 0 ).
query( r65 ).
? :: c67 .
? :: c66 .
r68 :- not(f51), c67 .
utility( r68 , 0 ).
query( r68 ).
0.1 :: f69 .
0.1 :: f70 .
r71 :- not(f51), c66, f69, f70 .
utility( r71 , 0 ).
query( r71 ).
? :: c73 .
? :: c72 .
r74 :- not(f51), c66, f69, not(f70), c73 .
utility( r74 , 0 ).
query( r74 ).
r75 :- not(f51), c66, f69, not(f70), c72 .
utility( r75 , 0 ).
query( r75 ).
? :: c76 .
0.1 :: f77 .
r78 :- not(f51), c66, not(f69), c76, f77 .
utility( r78 , 0 ).
query( r78 ).
? :: c80 .
? :: c79 .
r81 :- not(f51), c66, not(f69), c76, not(f77), c80 .
utility( r81 , 0 ).
query( r81 ).
r82 :- not(f51), c66, not(f69), c76, not(f77), c79 .
utility( r82 , 0 ).
query( r82 ).
