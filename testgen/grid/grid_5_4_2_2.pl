0.1 :: f24 .
0.1 :: f25 .
r26 :- f24, f25 .
utility( r26 , 0 ).
query( r26 ).
? :: c28 .
? :: c27 .
r29 :- f24, not(f25), c28 .
utility( r29 , 0 ).
query( r29 ).
r30 :- f24, not(f25), c27 .
utility( r30 , 0 ).
query( r30 ).
? :: c32 .
? :: c31 .
0.1 :: f33 .
r34 :- not(f24), c32, f33 .
utility( r34 , 0 ).
query( r34 ).
? :: c36 .
? :: c35 .
r37 :- not(f24), c32, not(f33), c36 .
utility( r37 , 0 ).
query( r37 ).
r38 :- not(f24), c32, not(f33), c35 .
utility( r38 , 0 ).
query( r38 ).
0.1 :: f39 .
r40 :- not(f24), c31, f39 .
utility( r40 , 0 ).
query( r40 ).
? :: c42 .
? :: c41 .
r43 :- not(f24), c31, not(f39), c42 .
utility( r43 , 0 ).
query( r43 ).
r44 :- not(f24), c31, not(f39), c41 .
utility( r44 , 0 ).
query( r44 ).
