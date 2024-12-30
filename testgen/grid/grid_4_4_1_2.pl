0.1 :: f9 .
r10 :- f9 .
utility( r10 , 0 ).
query( r10 ).
? :: c13 .
? :: c12 .
? :: c11 .
r14 :- not(f9), c13 .
utility( r14 , 0 ).
query( r14 ).
r15 :- not(f9), c12 .
utility( r15 , 0 ).
query( r15 ).
r16 :- not(f9), c11 .
utility( r16 , 0 ).
query( r16 ).
