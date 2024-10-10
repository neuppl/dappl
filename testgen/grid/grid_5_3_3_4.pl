0.1 :: f164 .
0.1 :: f165 .
0.1 :: f166 .
r167 :- f164, f165, f166 .
utility( r167 , 0 ).
query( r167 ).
? :: c170 .
? :: c169 .
? :: c168 .
r171 :- f164, f165, not(f166), c170 .
utility( r171 , 0 ).
query( r171 ).
r172 :- f164, f165, not(f166), c169 .
utility( r172 , 0 ).
query( r172 ).
r173 :- f164, f165, not(f166), c168 .
utility( r173 , 1 ).
query( r173 ).
? :: c176 .
? :: c175 .
? :: c174 .
0.1 :: f177 .
r178 :- f164, not(f165), c176, f177 .
utility( r178 , 0 ).
query( r178 ).
? :: c180 .
? :: c179 .
r181 :- f164, not(f165), c176, not(f177), c180 .
utility( r181 , 0 ).
query( r181 ).
r182 :- f164, not(f165), c176, not(f177), c179 .
utility( r182 , 0 ).
query( r182 ).
0.1 :: f183 .
r184 :- f164, not(f165), c175, f183 .
utility( r184 , 0 ).
query( r184 ).
? :: c185 .
r186 :- f164, not(f165), c175, not(f183), c185 .
utility( r186 , 0 ).
query( r186 ).
0.1 :: f187 .
r188 :- f164, not(f165), c174, f187 .
utility( r188 , 1 ).
query( r188 ).
? :: c191 .
? :: c190 .
? :: c189 .
r192 :- f164, not(f165), c174, not(f187), c191 .
utility( r192 , 0 ).
query( r192 ).
r193 :- f164, not(f165), c174, not(f187), c190 .
utility( r193 , 0 ).
query( r193 ).
r194 :- f164, not(f165), c174, not(f187), c189 .
utility( r194 , 1 ).
query( r194 ).
? :: c197 .
? :: c196 .
? :: c195 .
0.1 :: f198 .
0.1 :: f199 .
r200 :- not(f164), c197, f198, f199 .
utility( r200 , 0 ).
query( r200 ).
? :: c202 .
? :: c201 .
r203 :- not(f164), c197, f198, not(f199), c202 .
utility( r203 , 0 ).
query( r203 ).
r204 :- not(f164), c197, f198, not(f199), c201 .
utility( r204 , 0 ).
query( r204 ).
? :: c205 .
0.1 :: f206 .
r207 :- not(f164), c197, not(f198), c205, f206 .
utility( r207 , 0 ).
query( r207 ).
? :: c209 .
? :: c208 .
r210 :- not(f164), c197, not(f198), c205, not(f206), c209 .
utility( r210 , 0 ).
query( r210 ).
r211 :- not(f164), c197, not(f198), c205, not(f206), c208 .
utility( r211 , 0 ).
query( r211 ).
0.1 :: f212 .
0.1 :: f213 .
r214 :- not(f164), c196, f212, f213 .
utility( r214 , 0 ).
query( r214 ).
? :: c215 .
r216 :- not(f164), c196, f212, not(f213), c215 .
utility( r216 , 0 ).
query( r216 ).
? :: c217 .
0.1 :: f218 .
r219 :- not(f164), c196, not(f212), c217, f218 .
utility( r219 , 0 ).
query( r219 ).
? :: c220 .
r221 :- not(f164), c196, not(f212), c217, not(f218), c220 .
utility( r221 , 0 ).
query( r221 ).
0.1 :: f222 .
0.1 :: f223 .
r224 :- not(f164), c195, f222, f223 .
utility( r224 , 0 ).
query( r224 ).
? :: c226 .
? :: c225 .
r227 :- not(f164), c195, f222, not(f223), c226 .
utility( r227 , 0 ).
query( r227 ).
r228 :- not(f164), c195, f222, not(f223), c225 .
utility( r228 , 0 ).
query( r228 ).
? :: c231 .
? :: c230 .
? :: c229 .
0.1 :: f232 .
r233 :- not(f164), c195, not(f222), c231, f232 .
utility( r233 , 0 ).
query( r233 ).
? :: c235 .
? :: c234 .
r236 :- not(f164), c195, not(f222), c231, not(f232), c235 .
utility( r236 , 0 ).
query( r236 ).
r237 :- not(f164), c195, not(f222), c231, not(f232), c234 .
utility( r237 , 0 ).
query( r237 ).
0.1 :: f238 .
r239 :- not(f164), c195, not(f222), c230, f238 .
utility( r239 , 0 ).
query( r239 ).
? :: c240 .
r241 :- not(f164), c195, not(f222), c230, not(f238), c240 .
utility( r241 , 0 ).
query( r241 ).
0.1 :: f242 .
r243 :- not(f164), c195, not(f222), c229, f242 .
utility( r243 , 0 ).
query( r243 ).
? :: c246 .
? :: c245 .
? :: c244 .
r247 :- not(f164), c195, not(f222), c229, not(f242), c246 .
utility( r247 , 0 ).
query( r247 ).
r248 :- not(f164), c195, not(f222), c229, not(f242), c245 .
utility( r248 , 0 ).
query( r248 ).
r249 :- not(f164), c195, not(f222), c229, not(f242), c244 .
utility( r249 , 1 ).
query( r249 ).
