0.1 :: f136 .
0.1 :: f137 .
0.1 :: f138 .
r139 :- f136, f137, f138 .
utility( r139 , 0 ).
query( r139 ).
? :: c140 .
r141 :- f136, f137, not(f138), c140 .
utility( r141 , 0 ).
query( r141 ).
? :: c142 .
0.1 :: f143 .
r144 :- f136, not(f137), c142, f143 .
utility( r144 , 0 ).
query( r144 ).
? :: c145 .
r146 :- f136, not(f137), c142, not(f143), c145 .
utility( r146 , 0 ).
query( r146 ).
? :: c149 .
? :: c148 .
? :: c147 .
0.1 :: f150 .
0.1 :: f151 .
r152 :- not(f136), c149, f150, f151 .
utility( r152 , 0 ).
query( r152 ).
? :: c153 .
r154 :- not(f136), c149, f150, not(f151), c153 .
utility( r154 , 0 ).
query( r154 ).
? :: c155 .
0.1 :: f156 .
r157 :- not(f136), c149, not(f150), c155, f156 .
utility( r157 , 0 ).
query( r157 ).
? :: c158 .
r159 :- not(f136), c149, not(f150), c155, not(f156), c158 .
utility( r159 , 0 ).
query( r159 ).
0.1 :: f160 .
r161 :- not(f136), c148, f160 .
utility( r161 , 0 ).
query( r161 ).
? :: c162 .
r163 :- not(f136), c148, not(f160), c162 .
utility( r163 , 0 ).
query( r163 ).
0.1 :: f164 .
0.1 :: f165 .
r166 :- not(f136), c147, f164, f165 .
utility( r166 , 0 ).
query( r166 ).
? :: c168 .
? :: c167 .
r169 :- not(f136), c147, f164, not(f165), c168 .
utility( r169 , 0 ).
query( r169 ).
r170 :- not(f136), c147, f164, not(f165), c167 .
utility( r170 , 0 ).
query( r170 ).
? :: c173 .
? :: c172 .
? :: c171 .
0.1 :: f174 .
r175 :- not(f136), c147, not(f164), c173, f174 .
utility( r175 , 0 ).
query( r175 ).
? :: c176 .
r177 :- not(f136), c147, not(f164), c173, not(f174), c176 .
utility( r177 , 0 ).
query( r177 ).
r178 :- not(f136), c147, not(f164), c172 .
utility( r178 , 0 ).
query( r178 ).
0.1 :: f179 .
r180 :- not(f136), c147, not(f164), c171, f179 .
utility( r180 , 0 ).
query( r180 ).
? :: c182 .
? :: c181 .
r183 :- not(f136), c147, not(f164), c171, not(f179), c182 .
utility( r183 , 0 ).
query( r183 ).
r184 :- not(f136), c147, not(f164), c171, not(f179), c181 .
utility( r184 , 0 ).
query( r184 ).
