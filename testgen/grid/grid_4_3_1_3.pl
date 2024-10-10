0.1 :: f15 .
r16 :- f15 .
utility( r16 , 0 ).
query( r16 ).
? :: c18 .
? :: c17 .
r19 :- not(f15), c18 .
utility( r19 , 0 ).
query( r19 ).
r20 :- not(f15), c17 .
utility( r20 , 0 ).
query( r20 ).
