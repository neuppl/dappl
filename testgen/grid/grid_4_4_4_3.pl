0.1 :: f211 .
0.1 :: f212 .
0.1 :: f213 .
r214 :- f211, f212, f213 .
utility( r214 , 0 ).
query( r214 ).
? :: c216 .
? :: c215 .
r217 :- f211, f212, not(f213), c216 .
utility( r217 , 0 ).
query( r217 ).
0.1 :: f218 .
r219 :- f211, f212, not(f213), c215, f218 .
utility( r219 , 1 ).
query( r219 ).
? :: c220 .
r221 :- f211, f212, not(f213), c215, not(f218), c220 .
utility( r221 , 1 ).
query( r221 ).
? :: c222 .
0.1 :: f223 .
0.1 :: f224 .
r225 :- f211, not(f212), c222, f223, f224 .
utility( r225 , 1 ).
query( r225 ).
? :: c226 .
r227 :- f211, not(f212), c222, f223, not(f224), c226 .
utility( r227 , 1 ).
query( r227 ).
? :: c229 .
? :: c228 .
r230 :- f211, not(f212), c222, not(f223), c229 .
utility( r230 , 0 ).
query( r230 ).
0.1 :: f231 .
r232 :- f211, not(f212), c222, not(f223), c228, f231 .
utility( r232 , 1 ).
query( r232 ).
? :: c233 .
r234 :- f211, not(f212), c222, not(f223), c228, not(f231), c233 .
utility( r234 , 1 ).
query( r234 ).
? :: c235 .
0.1 :: f236 .
0.1 :: f237 .
r238 :- not(f211), c235, f236, f237 .
utility( r238 , 0 ).
query( r238 ).
? :: c240 .
? :: c239 .
r241 :- not(f211), c235, f236, not(f237), c240 .
utility( r241 , 0 ).
query( r241 ).
0.1 :: f242 .
r243 :- not(f211), c235, f236, not(f237), c239, f242 .
utility( r243 , 1 ).
query( r243 ).
? :: c244 .
r245 :- not(f211), c235, f236, not(f237), c239, not(f242), c244 .
utility( r245 , 1 ).
query( r245 ).
? :: c246 .
0.1 :: f247 .
r248 :- not(f211), c235, not(f236), c246, f247 .
utility( r248 , 0 ).
query( r248 ).
? :: c250 .
? :: c249 .
r251 :- not(f211), c235, not(f236), c246, not(f247), c250 .
utility( r251 , 0 ).
query( r251 ).
0.1 :: f252 .
r253 :- not(f211), c235, not(f236), c246, not(f247), c249, f252 .
utility( r253 , 1 ).
query( r253 ).
? :: c254 .
r255 :- not(f211), c235, not(f236), c246, not(f247), c249, not(f252), c254 .
utility( r255 , 1 ).
query( r255 ).
