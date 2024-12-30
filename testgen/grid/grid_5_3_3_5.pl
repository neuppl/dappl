0.1 :: f201 .
0.1 :: f202 .
0.1 :: f203 .
r204 :- f201, f202, f203 .
utility( r204 , 0 ).
query( r204 ).
? :: c205 .
r206 :- f201, f202, not(f203), c205 .
utility( r206 , 0 ).
query( r206 ).
? :: c207 .
0.1 :: f208 .
r209 :- f201, not(f202), c207, f208 .
utility( r209 , 0 ).
query( r209 ).
? :: c210 .
r211 :- f201, not(f202), c207, not(f208), c210 .
utility( r211 , 0 ).
query( r211 ).
? :: c213 .
? :: c212 .
0.1 :: f214 .
0.1 :: f215 .
r216 :- not(f201), c213, f214, f215 .
utility( r216 , 0 ).
query( r216 ).
? :: c218 .
? :: c217 .
r219 :- not(f201), c213, f214, not(f215), c218 .
utility( r219 , 0 ).
query( r219 ).
r220 :- not(f201), c213, f214, not(f215), c217 .
utility( r220 , 0 ).
query( r220 ).
? :: c222 .
? :: c221 .
0.1 :: f223 .
r224 :- not(f201), c213, not(f214), c222, f223 .
utility( r224 , 0 ).
query( r224 ).
? :: c226 .
? :: c225 .
r227 :- not(f201), c213, not(f214), c222, not(f223), c226 .
utility( r227 , 0 ).
query( r227 ).
r228 :- not(f201), c213, not(f214), c222, not(f223), c225 .
utility( r228 , 0 ).
query( r228 ).
0.1 :: f229 .
r230 :- not(f201), c213, not(f214), c221, f229 .
utility( r230 , 0 ).
query( r230 ).
? :: c232 .
? :: c231 .
r233 :- not(f201), c213, not(f214), c221, not(f229), c232 .
utility( r233 , 0 ).
query( r233 ).
r234 :- not(f201), c213, not(f214), c221, not(f229), c231 .
utility( r234 , 0 ).
query( r234 ).
0.1 :: f235 .
0.1 :: f236 .
r237 :- not(f201), c212, f235, f236 .
utility( r237 , 0 ).
query( r237 ).
? :: c238 .
r239 :- not(f201), c212, f235, not(f236), c238 .
utility( r239 , 0 ).
query( r239 ).
? :: c240 .
0.1 :: f241 .
r242 :- not(f201), c212, not(f235), c240, f241 .
utility( r242 , 0 ).
query( r242 ).
? :: c243 .
r244 :- not(f201), c212, not(f235), c240, not(f241), c243 .
utility( r244 , 0 ).
query( r244 ).
