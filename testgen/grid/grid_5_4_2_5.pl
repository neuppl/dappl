0.1 :: f64 .
0.1 :: f65 .
r66 :- f64, f65 .
utility( r66 , 0 ).
query( r66 ).
? :: c67 .
r68 :- f64, not(f65), c67 .
utility( r68 , 0 ).
query( r68 ).
? :: c70 .
? :: c69 .
0.1 :: f71 .
r72 :- not(f64), c70, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c73 .
r74 :- not(f64), c70, not(f71), c73 .
utility( r74 , 0 ).
query( r74 ).
0.1 :: f75 .
r76 :- not(f64), c69, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c78 .
? :: c77 .
r79 :- not(f64), c69, not(f75), c78 .
utility( r79 , 0 ).
query( r79 ).
r80 :- not(f64), c69, not(f75), c77 .
utility( r80 , 0 ).
query( r80 ).
