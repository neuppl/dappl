0.1 :: f74 .
0.1 :: f75 .
r76 :- f74, f75 .
utility( r76 , 1 ).
query( r76 ).
? :: c77 .
r78 :- f74, not(f75), c77 .
utility( r78 , 1 ).
query( r78 ).
? :: c80 .
? :: c79 .
r81 :- not(f74), c80 .
utility( r81 , 0 ).
query( r81 ).
0.1 :: f82 .
r83 :- not(f74), c79, f82 .
utility( r83 , 1 ).
query( r83 ).
? :: c84 .
r85 :- not(f74), c79, not(f82), c84 .
utility( r85 , 1 ).
query( r85 ).
