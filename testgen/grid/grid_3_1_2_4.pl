0.1 :: f65 .
0.1 :: f66 .
r67 :- f65, f66 .
utility( r67 , 0 ).
query( r67 ).
? :: c68 .
r69 :- f65, not(f66), c68 .
utility( r69 , 0 ).
query( r69 ).
? :: c71 .
? :: c70 .
0.1 :: f72 .
r73 :- not(f65), c71, f72 .
utility( r73 , 0 ).
query( r73 ).
? :: c74 .
r75 :- not(f65), c71, not(f72), c74 .
utility( r75 , 0 ).
query( r75 ).
0.1 :: f76 .
r77 :- not(f65), c70, f76 .
utility( r77 , 0 ).
query( r77 ).
? :: c78 .
r79 :- not(f65), c70, not(f76), c78 .
utility( r79 , 0 ).
query( r79 ).
