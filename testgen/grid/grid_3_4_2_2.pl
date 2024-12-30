0.1 :: f10 .
0.1 :: f11 .
r12 :- f10, f11 .
utility( r12 , 0 ).
query( r12 ).
? :: c13 .
r14 :- f10, not(f11), c13 .
utility( r14 , 0 ).
query( r14 ).
? :: c15 .
0.1 :: f16 .
r17 :- not(f10), c15, f16 .
utility( r17 , 0 ).
query( r17 ).
? :: c18 .
r19 :- not(f10), c15, not(f16), c18 .
utility( r19 , 0 ).
query( r19 ).
