0.1 :: f231 .
0.1 :: f232 .
r233 :- f231, f232 .
utility( r233 , 0 ).
query( r233 ).
? :: c234 .
r235 :- f231, not(f232), c234 .
utility( r235 , 0 ).
query( r235 ).
? :: c238 .
? :: c237 .
? :: c236 .
0.1 :: f239 .
r240 :- not(f231), c238, f239 .
utility( r240 , 0 ).
query( r240 ).
? :: c241 .
r242 :- not(f231), c238, not(f239), c241 .
utility( r242 , 0 ).
query( r242 ).
0.1 :: f243 .
r244 :- not(f231), c237, f243 .
utility( r244 , 0 ).
query( r244 ).
? :: c245 .
r246 :- not(f231), c237, not(f243), c245 .
utility( r246 , 0 ).
query( r246 ).
0.1 :: f247 .
r248 :- not(f231), c236, f247 .
utility( r248 , 0 ).
query( r248 ).
? :: c250 .
? :: c249 .
r251 :- not(f231), c236, not(f247), c250 .
utility( r251 , 0 ).
query( r251 ).
0.1 :: f252 .
0.1 :: f253 .
r254 :- not(f231), c236, not(f247), c249, f252, f253 .
utility( r254 , 0 ).
query( r254 ).
? :: c255 .
r256 :- not(f231), c236, not(f247), c249, f252, not(f253), c255 .
utility( r256 , 0 ).
query( r256 ).
? :: c258 .
? :: c257 .
r259 :- not(f231), c236, not(f247), c249, not(f252), c258 .
utility( r259 , 1 ).
query( r259 ).
0.1 :: f260 .
r261 :- not(f231), c236, not(f247), c249, not(f252), c257, f260 .
utility( r261 , 0 ).
query( r261 ).
? :: c262 .
r263 :- not(f231), c236, not(f247), c249, not(f252), c257, not(f260), c262 .
utility( r263 , 0 ).
query( r263 ).
