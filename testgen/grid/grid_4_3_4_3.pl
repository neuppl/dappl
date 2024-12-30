0.1 :: f166 .
0.1 :: f167 .
0.1 :: f168 .
0.1 :: f169 .
r170 :- f166, f167, f168, f169 .
utility( r170 , 0 ).
query( r170 ).
? :: c172 .
? :: c171 .
r173 :- f166, f167, f168, not(f169), c172 .
utility( r173 , 0 ).
query( r173 ).
r174 :- f166, f167, f168, not(f169), c171 .
utility( r174 , 0 ).
query( r174 ).
? :: c176 .
? :: c175 .
0.1 :: f177 .
r178 :- f166, f167, not(f168), c176, f177 .
utility( r178 , 0 ).
query( r178 ).
? :: c180 .
? :: c179 .
r181 :- f166, f167, not(f168), c176, not(f177), c180 .
utility( r181 , 0 ).
query( r181 ).
r182 :- f166, f167, not(f168), c176, not(f177), c179 .
utility( r182 , 0 ).
query( r182 ).
0.1 :: f183 .
r184 :- f166, f167, not(f168), c175, f183 .
utility( r184 , 0 ).
query( r184 ).
? :: c185 .
r186 :- f166, f167, not(f168), c175, not(f183), c185 .
utility( r186 , 0 ).
query( r186 ).
? :: c188 .
? :: c187 .
0.1 :: f189 .
0.1 :: f190 .
r191 :- f166, not(f167), c188, f189, f190 .
utility( r191 , 0 ).
query( r191 ).
? :: c193 .
? :: c192 .
r194 :- f166, not(f167), c188, f189, not(f190), c193 .
utility( r194 , 0 ).
query( r194 ).
r195 :- f166, not(f167), c188, f189, not(f190), c192 .
utility( r195 , 0 ).
query( r195 ).
? :: c197 .
? :: c196 .
0.1 :: f198 .
r199 :- f166, not(f167), c188, not(f189), c197, f198 .
utility( r199 , 0 ).
query( r199 ).
? :: c201 .
? :: c200 .
r202 :- f166, not(f167), c188, not(f189), c197, not(f198), c201 .
utility( r202 , 0 ).
query( r202 ).
r203 :- f166, not(f167), c188, not(f189), c197, not(f198), c200 .
utility( r203 , 0 ).
query( r203 ).
0.1 :: f204 .
r205 :- f166, not(f167), c188, not(f189), c196, f204 .
utility( r205 , 0 ).
query( r205 ).
? :: c207 .
? :: c206 .
r208 :- f166, not(f167), c188, not(f189), c196, not(f204), c207 .
utility( r208 , 0 ).
query( r208 ).
r209 :- f166, not(f167), c188, not(f189), c196, not(f204), c206 .
utility( r209 , 0 ).
query( r209 ).
0.1 :: f210 .
0.1 :: f211 .
r212 :- f166, not(f167), c187, f210, f211 .
utility( r212 , 0 ).
query( r212 ).
? :: c213 .
r214 :- f166, not(f167), c187, f210, not(f211), c213 .
utility( r214 , 0 ).
query( r214 ).
? :: c216 .
? :: c215 .
0.1 :: f217 .
r218 :- f166, not(f167), c187, not(f210), c216, f217 .
utility( r218 , 0 ).
query( r218 ).
? :: c220 .
? :: c219 .
r221 :- f166, not(f167), c187, not(f210), c216, not(f217), c220 .
utility( r221 , 0 ).
query( r221 ).
r222 :- f166, not(f167), c187, not(f210), c216, not(f217), c219 .
utility( r222 , 0 ).
query( r222 ).
0.1 :: f223 .
r224 :- f166, not(f167), c187, not(f210), c215, f223 .
utility( r224 , 0 ).
query( r224 ).
? :: c225 .
r226 :- f166, not(f167), c187, not(f210), c215, not(f223), c225 .
utility( r226 , 0 ).
query( r226 ).
? :: c227 .
0.1 :: f228 .
0.1 :: f229 .
0.1 :: f230 .
r231 :- not(f166), c227, f228, f229, f230 .
utility( r231 , 0 ).
query( r231 ).
? :: c233 .
? :: c232 .
r234 :- not(f166), c227, f228, f229, not(f230), c233 .
utility( r234 , 0 ).
query( r234 ).
r235 :- not(f166), c227, f228, f229, not(f230), c232 .
utility( r235 , 0 ).
query( r235 ).
? :: c237 .
? :: c236 .
0.1 :: f238 .
r239 :- not(f166), c227, f228, not(f229), c237, f238 .
utility( r239 , 0 ).
query( r239 ).
? :: c241 .
? :: c240 .
r242 :- not(f166), c227, f228, not(f229), c237, not(f238), c241 .
utility( r242 , 0 ).
query( r242 ).
r243 :- not(f166), c227, f228, not(f229), c237, not(f238), c240 .
utility( r243 , 0 ).
query( r243 ).
0.1 :: f244 .
r245 :- not(f166), c227, f228, not(f229), c236, f244 .
utility( r245 , 0 ).
query( r245 ).
? :: c247 .
? :: c246 .
r248 :- not(f166), c227, f228, not(f229), c236, not(f244), c247 .
utility( r248 , 0 ).
query( r248 ).
r249 :- not(f166), c227, f228, not(f229), c236, not(f244), c246 .
utility( r249 , 0 ).
query( r249 ).
? :: c251 .
? :: c250 .
0.1 :: f252 .
0.1 :: f253 .
r254 :- not(f166), c227, not(f228), c251, f252, f253 .
utility( r254 , 0 ).
query( r254 ).
? :: c256 .
? :: c255 .
r257 :- not(f166), c227, not(f228), c251, f252, not(f253), c256 .
utility( r257 , 0 ).
query( r257 ).
r258 :- not(f166), c227, not(f228), c251, f252, not(f253), c255 .
utility( r258 , 0 ).
query( r258 ).
? :: c260 .
? :: c259 .
0.1 :: f261 .
r262 :- not(f166), c227, not(f228), c251, not(f252), c260, f261 .
utility( r262 , 0 ).
query( r262 ).
? :: c264 .
? :: c263 .
r265 :- not(f166), c227, not(f228), c251, not(f252), c260, not(f261), c264 .
utility( r265 , 0 ).
query( r265 ).
r266 :- not(f166), c227, not(f228), c251, not(f252), c260, not(f261), c263 .
utility( r266 , 0 ).
query( r266 ).
0.1 :: f267 .
r268 :- not(f166), c227, not(f228), c251, not(f252), c259, f267 .
utility( r268 , 0 ).
query( r268 ).
? :: c270 .
? :: c269 .
r271 :- not(f166), c227, not(f228), c251, not(f252), c259, not(f267), c270 .
utility( r271 , 0 ).
query( r271 ).
r272 :- not(f166), c227, not(f228), c251, not(f252), c259, not(f267), c269 .
utility( r272 , 0 ).
query( r272 ).
0.1 :: f273 .
0.1 :: f274 .
r275 :- not(f166), c227, not(f228), c250, f273, f274 .
utility( r275 , 0 ).
query( r275 ).
? :: c276 .
r277 :- not(f166), c227, not(f228), c250, f273, not(f274), c276 .
utility( r277 , 0 ).
query( r277 ).
? :: c279 .
? :: c278 .
0.1 :: f280 .
r281 :- not(f166), c227, not(f228), c250, not(f273), c279, f280 .
utility( r281 , 0 ).
query( r281 ).
? :: c283 .
? :: c282 .
r284 :- not(f166), c227, not(f228), c250, not(f273), c279, not(f280), c283 .
utility( r284 , 0 ).
query( r284 ).
r285 :- not(f166), c227, not(f228), c250, not(f273), c279, not(f280), c282 .
utility( r285 , 0 ).
query( r285 ).
0.1 :: f286 .
r287 :- not(f166), c227, not(f228), c250, not(f273), c278, f286 .
utility( r287 , 0 ).
query( r287 ).
? :: c288 .
r289 :- not(f166), c227, not(f228), c250, not(f273), c278, not(f286), c288 .
utility( r289 , 0 ).
query( r289 ).
