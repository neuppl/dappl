0.1 :: f35 .
0.1 :: f36 .
r37 :- f35, f36 .
utility( r37 , 0 ).
query( r37 ).
? :: c38 .
r39 :- f35, not(f36), c38 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
0.1 :: f41 .
r42 :- not(f35), c40, f41 .
utility( r42 , 0 ).
query( r42 ).
? :: c43 .
r44 :- not(f35), c40, not(f41), c43 .
utility( r44 , 0 ).
query( r44 ).
