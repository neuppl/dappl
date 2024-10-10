0.1 :: f7 .
r8 :- f7 .
utility( r8 , 0 ).
query( r8 ).
? :: c10 .
? :: c9 .
r11 :- not(f7), c10 .
utility( r11 , 0 ).
query( r11 ).
r12 :- not(f7), c9 .
utility( r12 , 0 ).
query( r12 ).
