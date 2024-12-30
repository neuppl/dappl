0.1 :: f188 .
0.1 :: f189 .
0.1 :: f190 .
r191 :- f188, f189, f190 .
utility( r191 , 0 ).
query( r191 ).
? :: c192 .
r193 :- f188, f189, not(f190), c192 .
utility( r193 , 0 ).
query( r193 ).
? :: c195 .
? :: c194 .
0.1 :: f196 .
r197 :- f188, not(f189), c195, f196 .
utility( r197 , 0 ).
query( r197 ).
? :: c198 .
r199 :- f188, not(f189), c195, not(f196), c198 .
utility( r199 , 0 ).
query( r199 ).
0.1 :: f200 .
r201 :- f188, not(f189), c194, f200 .
utility( r201 , 0 ).
query( r201 ).
? :: c202 .
r203 :- f188, not(f189), c194, not(f200), c202 .
utility( r203 , 0 ).
query( r203 ).
? :: c204 .
0.1 :: f205 .
0.1 :: f206 .
r207 :- not(f188), c204, f205, f206 .
utility( r207 , 0 ).
query( r207 ).
? :: c208 .
r209 :- not(f188), c204, f205, not(f206), c208 .
utility( r209 , 0 ).
query( r209 ).
? :: c211 .
? :: c210 .
0.1 :: f212 .
r213 :- not(f188), c204, not(f205), c211, f212 .
utility( r213 , 0 ).
query( r213 ).
? :: c214 .
r215 :- not(f188), c204, not(f205), c211, not(f212), c214 .
utility( r215 , 0 ).
query( r215 ).
0.1 :: f216 .
r217 :- not(f188), c204, not(f205), c210, f216 .
utility( r217 , 0 ).
query( r217 ).
? :: c218 .
r219 :- not(f188), c204, not(f205), c210, not(f216), c218 .
utility( r219 , 0 ).
query( r219 ).
