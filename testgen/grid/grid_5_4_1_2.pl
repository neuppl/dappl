0.1 :: f7 .
r8 :- f7 .
utility( r8 , 0 ).
query( r8 ).
? :: c11 .
? :: c10 .
? :: c9 .
r12 :- not(f7), c11 .
utility( r12 , 0 ).
query( r12 ).
r13 :- not(f7), c10 .
utility( r13 , 0 ).
query( r13 ).
r14 :- not(f7), c9 .
utility( r14 , 0 ).
query( r14 ).
