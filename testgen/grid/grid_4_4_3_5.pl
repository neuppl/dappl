0.1 :: f191 .
0.1 :: f192 .
0.1 :: f193 .
r194 :- f191, f192, f193 .
utility( r194 , 1 ).
query( r194 ).
? :: c196 .
? :: c195 .
r197 :- f191, f192, not(f193), c196 .
utility( r197 , 0 ).
query( r197 ).
r198 :- f191, f192, not(f193), c195 .
utility( r198 , 1 ).
query( r198 ).
? :: c199 .
0.1 :: f200 .
r201 :- f191, not(f192), c199, f200 .
utility( r201 , 0 ).
query( r201 ).
? :: c203 .
? :: c202 .
r204 :- f191, not(f192), c199, not(f200), c203 .
utility( r204 , 0 ).
query( r204 ).
r205 :- f191, not(f192), c199, not(f200), c202 .
utility( r205 , 1 ).
query( r205 ).
? :: c206 .
0.1 :: f207 .
0.1 :: f208 .
r209 :- not(f191), c206, f207, f208 .
utility( r209 , 0 ).
query( r209 ).
? :: c211 .
? :: c210 .
r212 :- not(f191), c206, f207, not(f208), c211 .
utility( r212 , 0 ).
query( r212 ).
r213 :- not(f191), c206, f207, not(f208), c210 .
utility( r213 , 1 ).
query( r213 ).
? :: c214 .
0.1 :: f215 .
r216 :- not(f191), c206, not(f207), c214, f215 .
utility( r216 , 0 ).
query( r216 ).
? :: c218 .
? :: c217 .
r219 :- not(f191), c206, not(f207), c214, not(f215), c218 .
utility( r219 , 0 ).
query( r219 ).
r220 :- not(f191), c206, not(f207), c214, not(f215), c217 .
utility( r220 , 1 ).
query( r220 ).
