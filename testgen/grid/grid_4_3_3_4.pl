0.1 :: f167 .
0.1 :: f168 .
0.1 :: f169 .
r170 :- f167, f168, f169 .
utility( r170 , 0 ).
query( r170 ).
? :: c172 .
? :: c171 .
r173 :- f167, f168, not(f169), c172 .
utility( r173 , 0 ).
query( r173 ).
r174 :- f167, f168, not(f169), c171 .
utility( r174 , 0 ).
query( r174 ).
? :: c176 .
? :: c175 .
0.1 :: f177 .
r178 :- f167, not(f168), c176, f177 .
utility( r178 , 0 ).
query( r178 ).
? :: c180 .
? :: c179 .
r181 :- f167, not(f168), c176, not(f177), c180 .
utility( r181 , 0 ).
query( r181 ).
r182 :- f167, not(f168), c176, not(f177), c179 .
utility( r182 , 0 ).
query( r182 ).
0.1 :: f183 .
r184 :- f167, not(f168), c175, f183 .
utility( r184 , 0 ).
query( r184 ).
? :: c186 .
? :: c185 .
r187 :- f167, not(f168), c175, not(f183), c186 .
utility( r187 , 0 ).
query( r187 ).
r188 :- f167, not(f168), c175, not(f183), c185 .
utility( r188 , 0 ).
query( r188 ).
? :: c190 .
? :: c189 .
0.1 :: f191 .
0.1 :: f192 .
r193 :- not(f167), c190, f191, f192 .
utility( r193 , 0 ).
query( r193 ).
? :: c195 .
? :: c194 .
r196 :- not(f167), c190, f191, not(f192), c195 .
utility( r196 , 0 ).
query( r196 ).
r197 :- not(f167), c190, f191, not(f192), c194 .
utility( r197 , 0 ).
query( r197 ).
? :: c199 .
? :: c198 .
0.1 :: f200 .
r201 :- not(f167), c190, not(f191), c199, f200 .
utility( r201 , 0 ).
query( r201 ).
? :: c203 .
? :: c202 .
r204 :- not(f167), c190, not(f191), c199, not(f200), c203 .
utility( r204 , 0 ).
query( r204 ).
r205 :- not(f167), c190, not(f191), c199, not(f200), c202 .
utility( r205 , 0 ).
query( r205 ).
0.1 :: f206 .
r207 :- not(f167), c190, not(f191), c198, f206 .
utility( r207 , 0 ).
query( r207 ).
? :: c209 .
? :: c208 .
r210 :- not(f167), c190, not(f191), c198, not(f206), c209 .
utility( r210 , 0 ).
query( r210 ).
r211 :- not(f167), c190, not(f191), c198, not(f206), c208 .
utility( r211 , 0 ).
query( r211 ).
0.1 :: f212 .
0.1 :: f213 .
r214 :- not(f167), c189, f212, f213 .
utility( r214 , 0 ).
query( r214 ).
? :: c215 .
r216 :- not(f167), c189, f212, not(f213), c215 .
utility( r216 , 0 ).
query( r216 ).
? :: c218 .
? :: c217 .
0.1 :: f219 .
r220 :- not(f167), c189, not(f212), c218, f219 .
utility( r220 , 0 ).
query( r220 ).
? :: c222 .
? :: c221 .
r223 :- not(f167), c189, not(f212), c218, not(f219), c222 .
utility( r223 , 0 ).
query( r223 ).
r224 :- not(f167), c189, not(f212), c218, not(f219), c221 .
utility( r224 , 0 ).
query( r224 ).
0.1 :: f225 .
r226 :- not(f167), c189, not(f212), c217, f225 .
utility( r226 , 0 ).
query( r226 ).
? :: c227 .
r228 :- not(f167), c189, not(f212), c217, not(f225), c227 .
utility( r228 , 0 ).
query( r228 ).
