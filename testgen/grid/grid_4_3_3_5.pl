0.1 :: f229 .
0.1 :: f230 .
0.1 :: f231 .
r232 :- f229, f230, f231 .
utility( r232 , 0 ).
query( r232 ).
? :: c234 .
? :: c233 .
r235 :- f229, f230, not(f231), c234 .
utility( r235 , 0 ).
query( r235 ).
r236 :- f229, f230, not(f231), c233 .
utility( r236 , 0 ).
query( r236 ).
? :: c238 .
? :: c237 .
0.1 :: f239 .
r240 :- f229, not(f230), c238, f239 .
utility( r240 , 0 ).
query( r240 ).
? :: c242 .
? :: c241 .
r243 :- f229, not(f230), c238, not(f239), c242 .
utility( r243 , 0 ).
query( r243 ).
r244 :- f229, not(f230), c238, not(f239), c241 .
utility( r244 , 0 ).
query( r244 ).
0.1 :: f245 .
r246 :- f229, not(f230), c237, f245 .
utility( r246 , 0 ).
query( r246 ).
? :: c248 .
? :: c247 .
r249 :- f229, not(f230), c237, not(f245), c248 .
utility( r249 , 0 ).
query( r249 ).
r250 :- f229, not(f230), c237, not(f245), c247 .
utility( r250 , 0 ).
query( r250 ).
? :: c251 .
0.1 :: f252 .
0.1 :: f253 .
r254 :- not(f229), c251, f252, f253 .
utility( r254 , 0 ).
query( r254 ).
? :: c256 .
? :: c255 .
r257 :- not(f229), c251, f252, not(f253), c256 .
utility( r257 , 0 ).
query( r257 ).
r258 :- not(f229), c251, f252, not(f253), c255 .
utility( r258 , 0 ).
query( r258 ).
? :: c260 .
? :: c259 .
0.1 :: f261 .
r262 :- not(f229), c251, not(f252), c260, f261 .
utility( r262 , 0 ).
query( r262 ).
? :: c264 .
? :: c263 .
r265 :- not(f229), c251, not(f252), c260, not(f261), c264 .
utility( r265 , 0 ).
query( r265 ).
r266 :- not(f229), c251, not(f252), c260, not(f261), c263 .
utility( r266 , 0 ).
query( r266 ).
0.1 :: f267 .
r268 :- not(f229), c251, not(f252), c259, f267 .
utility( r268 , 0 ).
query( r268 ).
? :: c270 .
? :: c269 .
r271 :- not(f229), c251, not(f252), c259, not(f267), c270 .
utility( r271 , 0 ).
query( r271 ).
r272 :- not(f229), c251, not(f252), c259, not(f267), c269 .
utility( r272 , 0 ).
query( r272 ).
