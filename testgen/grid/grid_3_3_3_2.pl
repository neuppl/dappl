0.1 :: f12 .
r13 :- f12 .
utility( r13 , 0 ).
query( r13 ).
? :: c15 .
? :: c14 .
r16 :- not(f12), c15 .
utility( r16 , 0 ).
query( r16 ).
0.1 :: f17 .
r18 :- not(f12), c14, f17 .
utility( r18 , 1 ).
query( r18 ).
? :: c19 .
r20 :- not(f12), c14, not(f17), c19 .
utility( r20 , 1 ).
query( r20 ).
