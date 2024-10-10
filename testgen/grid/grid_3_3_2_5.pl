0.1 :: f46 .
0.1 :: f47 .
r48 :- f46, f47 .
utility( r48 , 0 ).
query( r48 ).
? :: c49 .
r50 :- f46, not(f47), c49 .
utility( r50 , 0 ).
query( r50 ).
? :: c51 .
0.1 :: f52 .
r53 :- not(f46), c51, f52 .
utility( r53 , 0 ).
query( r53 ).
? :: c54 .
r55 :- not(f46), c51, not(f52), c54 .
utility( r55 , 0 ).
query( r55 ).
