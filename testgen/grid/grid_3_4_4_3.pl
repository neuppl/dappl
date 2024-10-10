0.1 :: f33 .
0.1 :: f34 .
r35 :- f33, f34 .
utility( r35 , 1 ).
query( r35 ).
? :: c36 .
r37 :- f33, not(f34), c36 .
utility( r37 , 1 ).
query( r37 ).
? :: c38 .
0.1 :: f39 .
r40 :- not(f33), c38, f39 .
utility( r40 , 1 ).
query( r40 ).
? :: c41 .
r42 :- not(f33), c38, not(f39), c41 .
utility( r42 , 1 ).
query( r42 ).
