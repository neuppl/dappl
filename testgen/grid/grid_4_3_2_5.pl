0.1 :: f62 .
0.1 :: f63 .
r64 :- f62, f63 .
utility( r64 , 0 ).
query( r64 ).
? :: c66 .
? :: c65 .
r67 :- f62, not(f63), c66 .
utility( r67 , 0 ).
query( r67 ).
r68 :- f62, not(f63), c65 .
utility( r68 , 0 ).
query( r68 ).
? :: c70 .
? :: c69 .
0.1 :: f71 .
r72 :- not(f62), c70, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c74 .
? :: c73 .
r75 :- not(f62), c70, not(f71), c74 .
utility( r75 , 0 ).
query( r75 ).
r76 :- not(f62), c70, not(f71), c73 .
utility( r76 , 0 ).
query( r76 ).
0.1 :: f77 .
r78 :- not(f62), c69, f77 .
utility( r78 , 0 ).
query( r78 ).
? :: c80 .
? :: c79 .
r81 :- not(f62), c69, not(f77), c80 .
utility( r81 , 0 ).
query( r81 ).
r82 :- not(f62), c69, not(f77), c79 .
utility( r82 , 0 ).
query( r82 ).
