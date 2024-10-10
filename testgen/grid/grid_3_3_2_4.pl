0.1 :: f36 .
0.1 :: f37 .
r38 :- f36, f37 .
utility( r38 , 0 ).
query( r38 ).
? :: c39 .
r40 :- f36, not(f37), c39 .
utility( r40 , 0 ).
query( r40 ).
? :: c41 .
0.1 :: f42 .
r43 :- not(f36), c41, f42 .
utility( r43 , 0 ).
query( r43 ).
? :: c44 .
r45 :- not(f36), c41, not(f42), c44 .
utility( r45 , 0 ).
query( r45 ).
