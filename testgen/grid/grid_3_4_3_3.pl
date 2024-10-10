0.1 :: f34 .
0.1 :: f35 .
r36 :- f34, f35 .
utility( r36 , 1 ).
query( r36 ).
? :: c37 .
r38 :- f34, not(f35), c37 .
utility( r38 , 1 ).
query( r38 ).
? :: c39 .
0.1 :: f40 .
r41 :- not(f34), c39, f40 .
utility( r41 , 1 ).
query( r41 ).
? :: c42 .
r43 :- not(f34), c39, not(f40), c42 .
utility( r43 , 1 ).
query( r43 ).
