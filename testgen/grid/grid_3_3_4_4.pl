0.1 :: f43 .
0.1 :: f44 .
0.1 :: f45 .
r46 :- f43, f44, f45 .
utility( r46 , 1 ).
query( r46 ).
? :: c47 .
r48 :- f43, f44, not(f45), c47 .
utility( r48 , 1 ).
query( r48 ).
? :: c49 .
0.1 :: f50 .
r51 :- f43, not(f44), c49, f50 .
utility( r51 , 1 ).
query( r51 ).
? :: c52 .
r53 :- f43, not(f44), c49, not(f50), c52 .
utility( r53 , 1 ).
query( r53 ).
? :: c54 .
0.1 :: f55 .
0.1 :: f56 .
r57 :- not(f43), c54, f55, f56 .
utility( r57 , 1 ).
query( r57 ).
? :: c58 .
r59 :- not(f43), c54, f55, not(f56), c58 .
utility( r59 , 1 ).
query( r59 ).
? :: c60 .
0.1 :: f61 .
r62 :- not(f43), c54, not(f55), c60, f61 .
utility( r62 , 1 ).
query( r62 ).
? :: c63 .
r64 :- not(f43), c54, not(f55), c60, not(f61), c63 .
utility( r64 , 1 ).
query( r64 ).
