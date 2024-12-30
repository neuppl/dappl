0.1 :: f25 .
0.1 :: f26 .
r27 :- f25, f26 .
utility( r27 , 1 ).
query( r27 ).
? :: c28 .
r29 :- f25, not(f26), c28 .
utility( r29 , 1 ).
query( r29 ).
? :: c30 .
0.1 :: f31 .
r32 :- not(f25), c30, f31 .
utility( r32 , 1 ).
query( r32 ).
? :: c33 .
r34 :- not(f25), c30, not(f31), c33 .
utility( r34 , 1 ).
query( r34 ).
