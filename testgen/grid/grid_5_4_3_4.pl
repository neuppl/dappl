0.1 :: f201 .
0.1 :: f202 .
0.1 :: f203 .
r204 :- f201, f202, f203 .
utility( r204 , 0 ).
query( r204 ).
? :: c206 .
? :: c205 .
r207 :- f201, f202, not(f203), c206 .
utility( r207 , 0 ).
query( r207 ).
r208 :- f201, f202, not(f203), c205 .
utility( r208 , 0 ).
query( r208 ).
? :: c210 .
? :: c209 .
0.1 :: f211 .
r212 :- f201, not(f202), c210, f211 .
utility( r212 , 0 ).
query( r212 ).
? :: c214 .
? :: c213 .
r215 :- f201, not(f202), c210, not(f211), c214 .
utility( r215 , 0 ).
query( r215 ).
r216 :- f201, not(f202), c210, not(f211), c213 .
utility( r216 , 0 ).
query( r216 ).
0.1 :: f217 .
r218 :- f201, not(f202), c209, f217 .
utility( r218 , 0 ).
query( r218 ).
? :: c220 .
? :: c219 .
r221 :- f201, not(f202), c209, not(f217), c220 .
utility( r221 , 0 ).
query( r221 ).
r222 :- f201, not(f202), c209, not(f217), c219 .
utility( r222 , 0 ).
query( r222 ).
? :: c224 .
? :: c223 .
0.1 :: f225 .
0.1 :: f226 .
r227 :- not(f201), c224, f225, f226 .
utility( r227 , 0 ).
query( r227 ).
? :: c229 .
? :: c228 .
r230 :- not(f201), c224, f225, not(f226), c229 .
utility( r230 , 0 ).
query( r230 ).
r231 :- not(f201), c224, f225, not(f226), c228 .
utility( r231 , 0 ).
query( r231 ).
? :: c233 .
? :: c232 .
0.1 :: f234 .
r235 :- not(f201), c224, not(f225), c233, f234 .
utility( r235 , 0 ).
query( r235 ).
? :: c237 .
? :: c236 .
r238 :- not(f201), c224, not(f225), c233, not(f234), c237 .
utility( r238 , 0 ).
query( r238 ).
r239 :- not(f201), c224, not(f225), c233, not(f234), c236 .
utility( r239 , 0 ).
query( r239 ).
0.1 :: f240 .
r241 :- not(f201), c224, not(f225), c232, f240 .
utility( r241 , 0 ).
query( r241 ).
? :: c243 .
? :: c242 .
r244 :- not(f201), c224, not(f225), c232, not(f240), c243 .
utility( r244 , 0 ).
query( r244 ).
r245 :- not(f201), c224, not(f225), c232, not(f240), c242 .
utility( r245 , 0 ).
query( r245 ).
0.1 :: f246 .
0.1 :: f247 .
r248 :- not(f201), c223, f246, f247 .
utility( r248 , 0 ).
query( r248 ).
? :: c249 .
r250 :- not(f201), c223, f246, not(f247), c249 .
utility( r250 , 0 ).
query( r250 ).
? :: c251 .
0.1 :: f252 .
r253 :- not(f201), c223, not(f246), c251, f252 .
utility( r253 , 0 ).
query( r253 ).
? :: c254 .
r255 :- not(f201), c223, not(f246), c251, not(f252), c254 .
utility( r255 , 0 ).
query( r255 ).
