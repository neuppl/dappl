0.1 :: f137 .
0.1 :: f138 .
0.1 :: f139 .
r140 :- f137, f138, f139 .
utility( r140 , 0 ).
query( r140 ).
? :: c141 .
r142 :- f137, f138, not(f139), c141 .
utility( r142 , 0 ).
query( r142 ).
? :: c143 .
0.1 :: f144 .
r145 :- f137, not(f138), c143, f144 .
utility( r145 , 0 ).
query( r145 ).
? :: c146 .
r147 :- f137, not(f138), c143, not(f144), c146 .
utility( r147 , 0 ).
query( r147 ).
? :: c149 .
? :: c148 .
0.1 :: f150 .
0.1 :: f151 .
r152 :- not(f137), c149, f150, f151 .
utility( r152 , 0 ).
query( r152 ).
? :: c153 .
r154 :- not(f137), c149, f150, not(f151), c153 .
utility( r154 , 0 ).
query( r154 ).
? :: c155 .
0.1 :: f156 .
r157 :- not(f137), c149, not(f150), c155, f156 .
utility( r157 , 0 ).
query( r157 ).
? :: c158 .
r159 :- not(f137), c149, not(f150), c155, not(f156), c158 .
utility( r159 , 0 ).
query( r159 ).
0.1 :: f160 .
0.1 :: f161 .
r162 :- not(f137), c148, f160, f161 .
utility( r162 , 0 ).
query( r162 ).
? :: c164 .
? :: c163 .
r165 :- not(f137), c148, f160, not(f161), c164 .
utility( r165 , 0 ).
query( r165 ).
r166 :- not(f137), c148, f160, not(f161), c163 .
utility( r166 , 1 ).
query( r166 ).
? :: c169 .
? :: c168 .
? :: c167 .
0.1 :: f170 .
r171 :- not(f137), c148, not(f160), c169, f170 .
utility( r171 , 1 ).
query( r171 ).
? :: c173 .
? :: c172 .
r174 :- not(f137), c148, not(f160), c169, not(f170), c173 .
utility( r174 , 0 ).
query( r174 ).
r175 :- not(f137), c148, not(f160), c169, not(f170), c172 .
utility( r175 , 1 ).
query( r175 ).
0.1 :: f176 .
r177 :- not(f137), c148, not(f160), c168, f176 .
utility( r177 , 0 ).
query( r177 ).
? :: c178 .
r179 :- not(f137), c148, not(f160), c168, not(f176), c178 .
utility( r179 , 0 ).
query( r179 ).
0.1 :: f180 .
r181 :- not(f137), c148, not(f160), c167, f180 .
utility( r181 , 0 ).
query( r181 ).
? :: c184 .
? :: c183 .
? :: c182 .
r185 :- not(f137), c148, not(f160), c167, not(f180), c184 .
utility( r185 , 1 ).
query( r185 ).
r186 :- not(f137), c148, not(f160), c167, not(f180), c183 .
utility( r186 , 0 ).
query( r186 ).
r187 :- not(f137), c148, not(f160), c167, not(f180), c182 .
utility( r187 , 0 ).
query( r187 ).
