0.1 :: f9 .
r10 :- f9 .
utility( r10 , 0 ).
query( r10 ).
? :: c12 .
? :: c11 .
r13 :- not(f9), c12 .
utility( r13 , 0 ).
query( r13 ).
r14 :- not(f9), c11 .
utility( r14 , 0 ).
query( r14 ).
