0.1 :: f265 .
0.1 :: f266 .
0.1 :: f267 .
r268 :- f265, f266, f267 .
utility( r268 , 1 ).
query( r268 ).
? :: c269 .
r270 :- f265, f266, not(f267), c269 .
utility( r270 , 1 ).
query( r270 ).
? :: c272 .
? :: c271 .
r273 :- f265, not(f266), c272 .
utility( r273 , 0 ).
query( r273 ).
0.1 :: f274 .
r275 :- f265, not(f266), c271, f274 .
utility( r275 , 1 ).
query( r275 ).
? :: c276 .
r277 :- f265, not(f266), c271, not(f274), c276 .
utility( r277 , 1 ).
query( r277 ).
? :: c278 .
0.1 :: f279 .
r280 :- not(f265), c278, f279 .
utility( r280 , 0 ).
query( r280 ).
? :: c282 .
? :: c281 .
r283 :- not(f265), c278, not(f279), c282 .
utility( r283 , 0 ).
query( r283 ).
0.1 :: f284 .
r285 :- not(f265), c278, not(f279), c281, f284 .
utility( r285 , 1 ).
query( r285 ).
? :: c286 .
r287 :- not(f265), c278, not(f279), c281, not(f284), c286 .
utility( r287 , 1 ).
query( r287 ).
