0.1 :: f41 .
0.1 :: f42 .
r43 :- f41, f42 .
utility( r43 , 1 ).
query( r43 ).
? :: c44 .
r45 :- f41, not(f42), c44 .
utility( r45 , 1 ).
query( r45 ).
? :: c46 .
0.1 :: f47 .
r48 :- not(f41), c46, f47 .
utility( r48 , 1 ).
query( r48 ).
? :: c49 .
r50 :- not(f41), c46, not(f47), c49 .
utility( r50 , 1 ).
query( r50 ).
