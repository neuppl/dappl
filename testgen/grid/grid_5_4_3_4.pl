0.1 :: f203 .
0.1 :: f204 .
0.1 :: f205 .
r206 :- f203, f204, f205 .
utility( r206 , 0 ).
query( r206 ).
? :: c208 .
? :: c207 .
r209 :- f203, f204, not(f205), c208 .
utility( r209 , 0 ).
query( r209 ).
r210 :- f203, f204, not(f205), c207 .
utility( r210 , 0 ).
query( r210 ).
? :: c211 .
0.1 :: f212 .
r213 :- f203, not(f204), c211, f212 .
utility( r213 , 0 ).
query( r213 ).
? :: c215 .
? :: c214 .
r216 :- f203, not(f204), c211, not(f212), c215 .
utility( r216 , 0 ).
query( r216 ).
r217 :- f203, not(f204), c211, not(f212), c214 .
utility( r217 , 0 ).
query( r217 ).
? :: c219 .
? :: c218 .
0.1 :: f220 .
0.1 :: f221 .
r222 :- not(f203), c219, f220, f221 .
utility( r222 , 0 ).
query( r222 ).
? :: c224 .
? :: c223 .
r225 :- not(f203), c219, f220, not(f221), c224 .
utility( r225 , 0 ).
query( r225 ).
r226 :- not(f203), c219, f220, not(f221), c223 .
utility( r226 , 0 ).
query( r226 ).
? :: c227 .
0.1 :: f228 .
r229 :- not(f203), c219, not(f220), c227, f228 .
utility( r229 , 0 ).
query( r229 ).
? :: c231 .
? :: c230 .
r232 :- not(f203), c219, not(f220), c227, not(f228), c231 .
utility( r232 , 0 ).
query( r232 ).
r233 :- not(f203), c219, not(f220), c227, not(f228), c230 .
utility( r233 , 0 ).
query( r233 ).
0.1 :: f234 .
0.1 :: f235 .
r236 :- not(f203), c218, f234, f235 .
utility( r236 , 0 ).
query( r236 ).
? :: c238 .
? :: c237 .
r239 :- not(f203), c218, f234, not(f235), c238 .
utility( r239 , 0 ).
query( r239 ).
r240 :- not(f203), c218, f234, not(f235), c237 .
utility( r240 , 0 ).
query( r240 ).
? :: c241 .
0.1 :: f242 .
r243 :- not(f203), c218, not(f234), c241, f242 .
utility( r243 , 0 ).
query( r243 ).
? :: c245 .
? :: c244 .
r246 :- not(f203), c218, not(f234), c241, not(f242), c245 .
utility( r246 , 0 ).
query( r246 ).
r247 :- not(f203), c218, not(f234), c241, not(f242), c244 .
utility( r247 , 0 ).
query( r247 ).
