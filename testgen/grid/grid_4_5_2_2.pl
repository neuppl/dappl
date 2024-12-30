0.1 :: f11 .
0.1 :: f12 .
r13 :- f11, f12 .
utility( r13 , 0 ).
query( r13 ).
? :: c15 .
? :: c14 .
r16 :- f11, not(f12), c15 .
utility( r16 , 0 ).
query( r16 ).
r17 :- f11, not(f12), c14 .
utility( r17 , 0 ).
query( r17 ).
? :: c19 .
? :: c18 .
0.1 :: f20 .
r21 :- not(f11), c19, f20 .
utility( r21 , 0 ).
query( r21 ).
? :: c23 .
? :: c22 .
r24 :- not(f11), c19, not(f20), c23 .
utility( r24 , 0 ).
query( r24 ).
r25 :- not(f11), c19, not(f20), c22 .
utility( r25 , 0 ).
query( r25 ).
0.1 :: f26 .
r27 :- not(f11), c18, f26 .
utility( r27 , 0 ).
query( r27 ).
? :: c29 .
? :: c28 .
r30 :- not(f11), c18, not(f26), c29 .
utility( r30 , 0 ).
query( r30 ).
r31 :- not(f11), c18, not(f26), c28 .
utility( r31 , 0 ).
query( r31 ).
