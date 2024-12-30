0.1 :: f35 .
0.1 :: f36 .
0.1 :: f37 .
r38 :- f35, f36, f37 .
utility( r38 , 1 ).
query( r38 ).
? :: c39 .
r40 :- f35, f36, not(f37), c39 .
utility( r40 , 1 ).
query( r40 ).
? :: c41 .
0.1 :: f42 .
r43 :- f35, not(f36), c41, f42 .
utility( r43 , 1 ).
query( r43 ).
? :: c44 .
r45 :- f35, not(f36), c41, not(f42), c44 .
utility( r45 , 1 ).
query( r45 ).
? :: c46 .
0.1 :: f47 .
0.1 :: f48 .
r49 :- not(f35), c46, f47, f48 .
utility( r49 , 1 ).
query( r49 ).
? :: c50 .
r51 :- not(f35), c46, f47, not(f48), c50 .
utility( r51 , 1 ).
query( r51 ).
? :: c52 .
0.1 :: f53 .
r54 :- not(f35), c46, not(f47), c52, f53 .
utility( r54 , 1 ).
query( r54 ).
? :: c55 .
r56 :- not(f35), c46, not(f47), c52, not(f53), c55 .
utility( r56 , 1 ).
query( r56 ).
