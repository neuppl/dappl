0.1 :: f153 .
0.1 :: f154 .
r155 :- f153, f154 .
utility( r155 , 0 ).
query( r155 ).
? :: c157 .
? :: c156 .
0.1 :: f158 .
r159 :- f153, not(f154), c157, f158 .
utility( r159 , 0 ).
query( r159 ).
? :: c160 .
r161 :- f153, not(f154), c157, not(f158), c160 .
utility( r161 , 0 ).
query( r161 ).
r162 :- f153, not(f154), c156 .
utility( r162 , 0 ).
query( r162 ).
? :: c163 .
0.1 :: f164 .
0.1 :: f165 .
r166 :- not(f153), c163, f164, f165 .
utility( r166 , 0 ).
query( r166 ).
? :: c167 .
r168 :- not(f153), c163, f164, not(f165), c167 .
utility( r168 , 0 ).
query( r168 ).
? :: c170 .
? :: c169 .
0.1 :: f171 .
r172 :- not(f153), c163, not(f164), c170, f171 .
utility( r172 , 0 ).
query( r172 ).
? :: c173 .
r174 :- not(f153), c163, not(f164), c170, not(f171), c173 .
utility( r174 , 0 ).
query( r174 ).
r175 :- not(f153), c163, not(f164), c169 .
utility( r175 , 0 ).
query( r175 ).
