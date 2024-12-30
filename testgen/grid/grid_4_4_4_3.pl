0.1 :: f167 .
0.1 :: f168 .
r169 :- f167, f168 .
utility( r169 , 1 ).
query( r169 ).
? :: c170 .
r171 :- f167, not(f168), c170 .
utility( r171 , 1 ).
query( r171 ).
? :: c173 .
? :: c172 .
r174 :- not(f167), c173 .
utility( r174 , 0 ).
query( r174 ).
0.1 :: f175 .
r176 :- not(f167), c172, f175 .
utility( r176 , 1 ).
query( r176 ).
? :: c177 .
r178 :- not(f167), c172, not(f175), c177 .
utility( r178 , 1 ).
query( r178 ).
