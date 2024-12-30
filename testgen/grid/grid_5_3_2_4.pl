0.1 :: f65 .
0.1 :: f66 .
r67 :- f65, f66 .
utility( r67 , 0 ).
query( r67 ).
? :: c68 .
r69 :- f65, not(f66), c68 .
utility( r69 , 0 ).
query( r69 ).
? :: c72 .
? :: c71 .
? :: c70 .
0.1 :: f73 .
r74 :- not(f65), c72, f73 .
utility( r74 , 0 ).
query( r74 ).
? :: c75 .
r76 :- not(f65), c72, not(f73), c75 .
utility( r76 , 0 ).
query( r76 ).
0.1 :: f77 .
r78 :- not(f65), c71, f77 .
utility( r78 , 0 ).
query( r78 ).
? :: c79 .
r80 :- not(f65), c71, not(f77), c79 .
utility( r80 , 0 ).
query( r80 ).
0.1 :: f81 .
r82 :- not(f65), c70, f81 .
utility( r82 , 0 ).
query( r82 ).
? :: c85 .
? :: c84 .
? :: c83 .
r86 :- not(f65), c70, not(f81), c85 .
utility( r86 , 0 ).
query( r86 ).
r87 :- not(f65), c70, not(f81), c84 .
utility( r87 , 0 ).
query( r87 ).
r88 :- not(f65), c70, not(f81), c83 .
utility( r88 , 0 ).
query( r88 ).
