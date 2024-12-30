0.1 :: f11 .
0.1 :: f12 .
r13 :- f11, f12 .
utility( r13 , 1 ).
query( r13 ).
? :: c14 .
r15 :- f11, not(f12), c14 .
utility( r15 , 1 ).
query( r15 ).
? :: c16 .
0.1 :: f17 .
r18 :- not(f11), c16, f17 .
utility( r18 , 1 ).
query( r18 ).
? :: c19 .
r20 :- not(f11), c16, not(f17), c19 .
utility( r20 , 1 ).
query( r20 ).
