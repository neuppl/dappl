0.1 :: f56 .
0.1 :: f57 .
0.1 :: f58 .
r59 :- f56, f57, f58 .
utility( r59 , 0 ).
query( r59 ).
? :: c60 .
r61 :- f56, f57, not(f58), c60 .
utility( r61 , 0 ).
query( r61 ).
? :: c63 .
? :: c62 .
0.1 :: f64 .
r65 :- f56, not(f57), c63, f64 .
utility( r65 , 0 ).
query( r65 ).
? :: c66 .
r67 :- f56, not(f57), c63, not(f64), c66 .
utility( r67 , 0 ).
query( r67 ).
r68 :- f56, not(f57), c62 .
utility( r68 , 1 ).
query( r68 ).
? :: c69 .
0.1 :: f70 .
0.1 :: f71 .
r72 :- not(f56), c69, f70, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c73 .
r74 :- not(f56), c69, f70, not(f71), c73 .
utility( r74 , 0 ).
query( r74 ).
? :: c76 .
? :: c75 .
0.1 :: f77 .
r78 :- not(f56), c69, not(f70), c76, f77 .
utility( r78 , 0 ).
query( r78 ).
? :: c79 .
r80 :- not(f56), c69, not(f70), c76, not(f77), c79 .
utility( r80 , 0 ).
query( r80 ).
r81 :- not(f56), c69, not(f70), c75 .
utility( r81 , 1 ).
query( r81 ).
