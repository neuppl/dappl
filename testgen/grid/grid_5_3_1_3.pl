0.1 :: f11 .
r12 :- f11 .
utility( r12 , 0 ).
query( r12 ).
? :: c14 .
? :: c13 .
r15 :- not(f11), c14 .
utility( r15 , 0 ).
query( r15 ).
r16 :- not(f11), c13 .
utility( r16 , 0 ).
query( r16 ).
