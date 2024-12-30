0.1 :: f15 .
0.1 :: f16 .
r17 :- f15, f16 .
utility( r17 , 1 ).
query( r17 ).
? :: c18 .
r19 :- f15, not(f16), c18 .
utility( r19 , 1 ).
query( r19 ).
? :: c20 .
0.1 :: f21 .
r22 :- not(f15), c20, f21 .
utility( r22 , 1 ).
query( r22 ).
? :: c23 .
r24 :- not(f15), c20, not(f21), c23 .
utility( r24 , 1 ).
query( r24 ).
