0.1 :: f63 .
0.1 :: f64 .
r65 :- f63, f64 .
utility( r65 , 0 ).
query( r65 ).
? :: c66 .
r67 :- f63, not(f64), c66 .
utility( r67 , 0 ).
query( r67 ).
? :: c69 .
? :: c68 .
0.1 :: f70 .
r71 :- not(f63), c69, f70 .
utility( r71 , 0 ).
query( r71 ).
? :: c72 .
r73 :- not(f63), c69, not(f70), c72 .
utility( r73 , 0 ).
query( r73 ).
0.1 :: f74 .
r75 :- not(f63), c68, f74 .
utility( r75 , 0 ).
query( r75 ).
? :: c76 .
r77 :- not(f63), c68, not(f74), c76 .
utility( r77 , 0 ).
query( r77 ).
