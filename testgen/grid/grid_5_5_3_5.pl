0.1 :: f185 .
0.1 :: f186 .
0.1 :: f187 .
r188 :- f185, f186, f187 .
utility( r188 , 0 ).
query( r188 ).
? :: c189 .
r190 :- f185, f186, not(f187), c189 .
utility( r190 , 0 ).
query( r190 ).
? :: c191 .
0.1 :: f192 .
r193 :- f185, not(f186), c191, f192 .
utility( r193 , 0 ).
query( r193 ).
? :: c194 .
r195 :- f185, not(f186), c191, not(f192), c194 .
utility( r195 , 0 ).
query( r195 ).
? :: c198 .
? :: c197 .
? :: c196 .
0.1 :: f199 .
0.1 :: f200 .
r201 :- not(f185), c198, f199, f200 .
utility( r201 , 0 ).
query( r201 ).
? :: c202 .
r203 :- not(f185), c198, f199, not(f200), c202 .
utility( r203 , 0 ).
query( r203 ).
? :: c205 .
? :: c204 .
0.1 :: f206 .
r207 :- not(f185), c198, not(f199), c205, f206 .
utility( r207 , 0 ).
query( r207 ).
? :: c208 .
r209 :- not(f185), c198, not(f199), c205, not(f206), c208 .
utility( r209 , 0 ).
query( r209 ).
r210 :- not(f185), c198, not(f199), c204 .
utility( r210 , 0 ).
query( r210 ).
0.1 :: f211 .
0.1 :: f212 .
r213 :- not(f185), c197, f211, f212 .
utility( r213 , 0 ).
query( r213 ).
? :: c214 .
r215 :- not(f185), c197, f211, not(f212), c214 .
utility( r215 , 0 ).
query( r215 ).
? :: c216 .
0.1 :: f217 .
r218 :- not(f185), c197, not(f211), c216, f217 .
utility( r218 , 0 ).
query( r218 ).
? :: c219 .
r220 :- not(f185), c197, not(f211), c216, not(f217), c219 .
utility( r220 , 0 ).
query( r220 ).
0.1 :: f221 .
0.1 :: f222 .
r223 :- not(f185), c196, f221, f222 .
utility( r223 , 0 ).
query( r223 ).
? :: c224 .
r225 :- not(f185), c196, f221, not(f222), c224 .
utility( r225 , 0 ).
query( r225 ).
? :: c227 .
? :: c226 .
r228 :- not(f185), c196, not(f221), c227 .
utility( r228 , 0 ).
query( r228 ).
0.1 :: f229 .
r230 :- not(f185), c196, not(f221), c226, f229 .
utility( r230 , 0 ).
query( r230 ).
? :: c231 .
r232 :- not(f185), c196, not(f221), c226, not(f229), c231 .
utility( r232 , 0 ).
query( r232 ).
