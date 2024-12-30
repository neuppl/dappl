0.1 :: f164 .
0.1 :: f165 .
0.1 :: f166 .
0.1 :: f167 .
r168 :- f164, f165, f166, f167 .
utility( r168 , 0 ).
query( r168 ).
? :: c169 .
r170 :- f164, f165, f166, not(f167), c169 .
utility( r170 , 0 ).
query( r170 ).
? :: c171 .
0.1 :: f172 .
r173 :- f164, f165, not(f166), c171, f172 .
utility( r173 , 0 ).
query( r173 ).
? :: c174 .
r175 :- f164, f165, not(f166), c171, not(f172), c174 .
utility( r175 , 0 ).
query( r175 ).
? :: c176 .
0.1 :: f177 .
0.1 :: f178 .
r179 :- f164, not(f165), c176, f177, f178 .
utility( r179 , 0 ).
query( r179 ).
? :: c180 .
r181 :- f164, not(f165), c176, f177, not(f178), c180 .
utility( r181 , 0 ).
query( r181 ).
? :: c182 .
0.1 :: f183 .
r184 :- f164, not(f165), c176, not(f177), c182, f183 .
utility( r184 , 0 ).
query( r184 ).
? :: c185 .
r186 :- f164, not(f165), c176, not(f177), c182, not(f183), c185 .
utility( r186 , 0 ).
query( r186 ).
? :: c189 .
? :: c188 .
? :: c187 .
0.1 :: f190 .
0.1 :: f191 .
0.1 :: f192 .
r193 :- not(f164), c189, f190, f191, f192 .
utility( r193 , 0 ).
query( r193 ).
? :: c194 .
r195 :- not(f164), c189, f190, f191, not(f192), c194 .
utility( r195 , 0 ).
query( r195 ).
? :: c196 .
0.1 :: f197 .
r198 :- not(f164), c189, f190, not(f191), c196, f197 .
utility( r198 , 0 ).
query( r198 ).
? :: c199 .
r200 :- not(f164), c189, f190, not(f191), c196, not(f197), c199 .
utility( r200 , 0 ).
query( r200 ).
? :: c202 .
? :: c201 .
0.1 :: f203 .
0.1 :: f204 .
r205 :- not(f164), c189, not(f190), c202, f203, f204 .
utility( r205 , 0 ).
query( r205 ).
? :: c206 .
r207 :- not(f164), c189, not(f190), c202, f203, not(f204), c206 .
utility( r207 , 0 ).
query( r207 ).
? :: c208 .
0.1 :: f209 .
r210 :- not(f164), c189, not(f190), c202, not(f203), c208, f209 .
utility( r210 , 0 ).
query( r210 ).
? :: c211 .
r212 :- not(f164), c189, not(f190), c202, not(f203), c208, not(f209), c211 .
utility( r212 , 0 ).
query( r212 ).
0.1 :: f213 .
0.1 :: f214 .
r215 :- not(f164), c189, not(f190), c201, f213, f214 .
utility( r215 , 0 ).
query( r215 ).
? :: c216 .
r217 :- not(f164), c189, not(f190), c201, f213, not(f214), c216 .
utility( r217 , 0 ).
query( r217 ).
? :: c218 .
0.1 :: f219 .
r220 :- not(f164), c189, not(f190), c201, not(f213), c218, f219 .
utility( r220 , 0 ).
query( r220 ).
? :: c221 .
r222 :- not(f164), c189, not(f190), c201, not(f213), c218, not(f219), c221 .
utility( r222 , 0 ).
query( r222 ).
0.1 :: f223 .
0.1 :: f224 .
0.1 :: f225 .
r226 :- not(f164), c188, f223, f224, f225 .
utility( r226 , 0 ).
query( r226 ).
? :: c227 .
r228 :- not(f164), c188, f223, f224, not(f225), c227 .
utility( r228 , 0 ).
query( r228 ).
? :: c229 .
0.1 :: f230 .
r231 :- not(f164), c188, f223, not(f224), c229, f230 .
utility( r231 , 0 ).
query( r231 ).
? :: c232 .
r233 :- not(f164), c188, f223, not(f224), c229, not(f230), c232 .
utility( r233 , 0 ).
query( r233 ).
? :: c234 .
0.1 :: f235 .
0.1 :: f236 .
r237 :- not(f164), c188, not(f223), c234, f235, f236 .
utility( r237 , 0 ).
query( r237 ).
? :: c238 .
r239 :- not(f164), c188, not(f223), c234, f235, not(f236), c238 .
utility( r239 , 0 ).
query( r239 ).
? :: c240 .
0.1 :: f241 .
r242 :- not(f164), c188, not(f223), c234, not(f235), c240, f241 .
utility( r242 , 0 ).
query( r242 ).
? :: c243 .
r244 :- not(f164), c188, not(f223), c234, not(f235), c240, not(f241), c243 .
utility( r244 , 0 ).
query( r244 ).
0.1 :: f245 .
0.1 :: f246 .
0.1 :: f247 .
r248 :- not(f164), c187, f245, f246, f247 .
utility( r248 , 0 ).
query( r248 ).
? :: c250 .
? :: c249 .
r251 :- not(f164), c187, f245, f246, not(f247), c250 .
utility( r251 , 0 ).
query( r251 ).
r252 :- not(f164), c187, f245, f246, not(f247), c249 .
utility( r252 , 0 ).
query( r252 ).
? :: c253 .
0.1 :: f254 .
r255 :- not(f164), c187, f245, not(f246), c253, f254 .
utility( r255 , 0 ).
query( r255 ).
? :: c257 .
? :: c256 .
r258 :- not(f164), c187, f245, not(f246), c253, not(f254), c257 .
utility( r258 , 0 ).
query( r258 ).
r259 :- not(f164), c187, f245, not(f246), c253, not(f254), c256 .
utility( r259 , 0 ).
query( r259 ).
? :: c261 .
? :: c260 .
0.1 :: f262 .
0.1 :: f263 .
r264 :- not(f164), c187, not(f245), c261, f262, f263 .
utility( r264 , 0 ).
query( r264 ).
? :: c266 .
? :: c265 .
r267 :- not(f164), c187, not(f245), c261, f262, not(f263), c266 .
utility( r267 , 0 ).
query( r267 ).
r268 :- not(f164), c187, not(f245), c261, f262, not(f263), c265 .
utility( r268 , 0 ).
query( r268 ).
? :: c269 .
0.1 :: f270 .
r271 :- not(f164), c187, not(f245), c261, not(f262), c269, f270 .
utility( r271 , 0 ).
query( r271 ).
? :: c273 .
? :: c272 .
r274 :- not(f164), c187, not(f245), c261, not(f262), c269, not(f270), c273 .
utility( r274 , 0 ).
query( r274 ).
r275 :- not(f164), c187, not(f245), c261, not(f262), c269, not(f270), c272 .
utility( r275 , 0 ).
query( r275 ).
0.1 :: f276 .
0.1 :: f277 .
r278 :- not(f164), c187, not(f245), c260, f276, f277 .
utility( r278 , 0 ).
query( r278 ).
? :: c280 .
? :: c279 .
r281 :- not(f164), c187, not(f245), c260, f276, not(f277), c280 .
utility( r281 , 0 ).
query( r281 ).
r282 :- not(f164), c187, not(f245), c260, f276, not(f277), c279 .
utility( r282 , 0 ).
query( r282 ).
? :: c283 .
0.1 :: f284 .
r285 :- not(f164), c187, not(f245), c260, not(f276), c283, f284 .
utility( r285 , 0 ).
query( r285 ).
? :: c287 .
? :: c286 .
r288 :- not(f164), c187, not(f245), c260, not(f276), c283, not(f284), c287 .
utility( r288 , 0 ).
query( r288 ).
r289 :- not(f164), c187, not(f245), c260, not(f276), c283, not(f284), c286 .
utility( r289 , 0 ).
query( r289 ).
