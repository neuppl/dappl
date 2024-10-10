0.1 :: f26 .
0.1 :: f27 .
r28 :- f26, f27 .
utility( r28 , 0 ).
query( r28 ).
? :: c29 .
r30 :- f26, not(f27), c29 .
utility( r30 , 0 ).
query( r30 ).
? :: c33 .
? :: c32 .
? :: c31 .
0.1 :: f34 .
r35 :- not(f26), c33, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c36 .
r37 :- not(f26), c33, not(f34), c36 .
utility( r37 , 0 ).
query( r37 ).
0.1 :: f38 .
r39 :- not(f26), c32, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c41 .
? :: c40 .
r42 :- not(f26), c32, not(f38), c41 .
utility( r42 , 0 ).
query( r42 ).
r43 :- not(f26), c32, not(f38), c40 .
utility( r43 , 0 ).
query( r43 ).
0.1 :: f44 .
r45 :- not(f26), c31, f44 .
utility( r45 , 0 ).
query( r45 ).
? :: c47 .
? :: c46 .
r48 :- not(f26), c31, not(f44), c47 .
utility( r48 , 0 ).
query( r48 ).
r49 :- not(f26), c31, not(f44), c46 .
utility( r49 , 0 ).
query( r49 ).
