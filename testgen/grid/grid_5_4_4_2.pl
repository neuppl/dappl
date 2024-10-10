0.1 :: f144 .
0.1 :: f145 .
0.1 :: f146 .
0.1 :: f147 .
r148 :- f144, f145, f146, f147 .
utility( r148 , 0 ).
query( r148 ).
? :: c149 .
r150 :- f144, f145, f146, not(f147), c149 .
utility( r150 , 0 ).
query( r150 ).
? :: c152 .
? :: c151 .
0.1 :: f153 .
r154 :- f144, f145, not(f146), c152, f153 .
utility( r154 , 0 ).
query( r154 ).
? :: c157 .
? :: c156 .
? :: c155 .
r158 :- f144, f145, not(f146), c152, not(f153), c157 .
utility( r158 , 0 ).
query( r158 ).
r159 :- f144, f145, not(f146), c152, not(f153), c156 .
utility( r159 , 0 ).
query( r159 ).
r160 :- f144, f145, not(f146), c152, not(f153), c155 .
utility( r160 , 0 ).
query( r160 ).
0.1 :: f161 .
r162 :- f144, f145, not(f146), c151, f161 .
utility( r162 , 0 ).
query( r162 ).
? :: c163 .
r164 :- f144, f145, not(f146), c151, not(f161), c163 .
utility( r164 , 0 ).
query( r164 ).
? :: c166 .
? :: c165 .
0.1 :: f167 .
0.1 :: f168 .
r169 :- f144, not(f145), c166, f167, f168 .
utility( r169 , 0 ).
query( r169 ).
? :: c170 .
r171 :- f144, not(f145), c166, f167, not(f168), c170 .
utility( r171 , 0 ).
query( r171 ).
? :: c173 .
? :: c172 .
0.1 :: f174 .
r175 :- f144, not(f145), c166, not(f167), c173, f174 .
utility( r175 , 0 ).
query( r175 ).
? :: c178 .
? :: c177 .
? :: c176 .
r179 :- f144, not(f145), c166, not(f167), c173, not(f174), c178 .
utility( r179 , 0 ).
query( r179 ).
r180 :- f144, not(f145), c166, not(f167), c173, not(f174), c177 .
utility( r180 , 0 ).
query( r180 ).
r181 :- f144, not(f145), c166, not(f167), c173, not(f174), c176 .
utility( r181 , 0 ).
query( r181 ).
0.1 :: f182 .
r183 :- f144, not(f145), c166, not(f167), c172, f182 .
utility( r183 , 0 ).
query( r183 ).
? :: c184 .
r185 :- f144, not(f145), c166, not(f167), c172, not(f182), c184 .
utility( r185 , 0 ).
query( r185 ).
0.1 :: f186 .
0.1 :: f187 .
r188 :- f144, not(f145), c165, f186, f187 .
utility( r188 , 0 ).
query( r188 ).
? :: c190 .
? :: c189 .
r191 :- f144, not(f145), c165, f186, not(f187), c190 .
utility( r191 , 0 ).
query( r191 ).
r192 :- f144, not(f145), c165, f186, not(f187), c189 .
utility( r192 , 0 ).
query( r192 ).
? :: c195 .
? :: c194 .
? :: c193 .
0.1 :: f196 .
r197 :- f144, not(f145), c165, not(f186), c195, f196 .
utility( r197 , 0 ).
query( r197 ).
? :: c198 .
r199 :- f144, not(f145), c165, not(f186), c195, not(f196), c198 .
utility( r199 , 0 ).
query( r199 ).
0.1 :: f200 .
r201 :- f144, not(f145), c165, not(f186), c194, f200 .
utility( r201 , 0 ).
query( r201 ).
? :: c202 .
r203 :- f144, not(f145), c165, not(f186), c194, not(f200), c202 .
utility( r203 , 0 ).
query( r203 ).
0.1 :: f204 .
r205 :- f144, not(f145), c165, not(f186), c193, f204 .
utility( r205 , 0 ).
query( r205 ).
? :: c207 .
? :: c206 .
r208 :- f144, not(f145), c165, not(f186), c193, not(f204), c207 .
utility( r208 , 0 ).
query( r208 ).
r209 :- f144, not(f145), c165, not(f186), c193, not(f204), c206 .
utility( r209 , 0 ).
query( r209 ).
? :: c212 .
? :: c211 .
? :: c210 .
r213 :- not(f144), c212 .
utility( r213 , 0 ).
query( r213 ).
0.1 :: f214 .
0.1 :: f215 .
0.1 :: f216 .
r217 :- not(f144), c211, f214, f215, f216 .
utility( r217 , 0 ).
query( r217 ).
? :: c219 .
? :: c218 .
r220 :- not(f144), c211, f214, f215, not(f216), c219 .
utility( r220 , 0 ).
query( r220 ).
r221 :- not(f144), c211, f214, f215, not(f216), c218 .
utility( r221 , 0 ).
query( r221 ).
? :: c223 .
? :: c222 .
0.1 :: f224 .
r225 :- not(f144), c211, f214, not(f215), c223, f224 .
utility( r225 , 0 ).
query( r225 ).
? :: c227 .
? :: c226 .
r228 :- not(f144), c211, f214, not(f215), c223, not(f224), c227 .
utility( r228 , 0 ).
query( r228 ).
r229 :- not(f144), c211, f214, not(f215), c223, not(f224), c226 .
utility( r229 , 0 ).
query( r229 ).
0.1 :: f230 .
r231 :- not(f144), c211, f214, not(f215), c222, f230 .
utility( r231 , 0 ).
query( r231 ).
? :: c233 .
? :: c232 .
r234 :- not(f144), c211, f214, not(f215), c222, not(f230), c233 .
utility( r234 , 0 ).
query( r234 ).
r235 :- not(f144), c211, f214, not(f215), c222, not(f230), c232 .
utility( r235 , 0 ).
query( r235 ).
? :: c237 .
? :: c236 .
0.1 :: f238 .
0.1 :: f239 .
r240 :- not(f144), c211, not(f214), c237, f238, f239 .
utility( r240 , 0 ).
query( r240 ).
? :: c242 .
? :: c241 .
r243 :- not(f144), c211, not(f214), c237, f238, not(f239), c242 .
utility( r243 , 0 ).
query( r243 ).
r244 :- not(f144), c211, not(f214), c237, f238, not(f239), c241 .
utility( r244 , 0 ).
query( r244 ).
? :: c246 .
? :: c245 .
0.1 :: f247 .
r248 :- not(f144), c211, not(f214), c237, not(f238), c246, f247 .
utility( r248 , 0 ).
query( r248 ).
? :: c249 .
r250 :- not(f144), c211, not(f214), c237, not(f238), c246, not(f247), c249 .
utility( r250 , 0 ).
query( r250 ).
0.1 :: f251 .
r252 :- not(f144), c211, not(f214), c237, not(f238), c245, f251 .
utility( r252 , 0 ).
query( r252 ).
? :: c254 .
? :: c253 .
r255 :- not(f144), c211, not(f214), c237, not(f238), c245, not(f251), c254 .
utility( r255 , 0 ).
query( r255 ).
r256 :- not(f144), c211, not(f214), c237, not(f238), c245, not(f251), c253 .
utility( r256 , 0 ).
query( r256 ).
0.1 :: f257 .
0.1 :: f258 .
r259 :- not(f144), c211, not(f214), c236, f257, f258 .
utility( r259 , 0 ).
query( r259 ).
? :: c261 .
? :: c260 .
r262 :- not(f144), c211, not(f214), c236, f257, not(f258), c261 .
utility( r262 , 0 ).
query( r262 ).
r263 :- not(f144), c211, not(f214), c236, f257, not(f258), c260 .
utility( r263 , 0 ).
query( r263 ).
? :: c265 .
? :: c264 .
0.1 :: f266 .
r267 :- not(f144), c211, not(f214), c236, not(f257), c265, f266 .
utility( r267 , 0 ).
query( r267 ).
? :: c269 .
? :: c268 .
r270 :- not(f144), c211, not(f214), c236, not(f257), c265, not(f266), c269 .
utility( r270 , 0 ).
query( r270 ).
r271 :- not(f144), c211, not(f214), c236, not(f257), c265, not(f266), c268 .
utility( r271 , 0 ).
query( r271 ).
0.1 :: f272 .
r273 :- not(f144), c211, not(f214), c236, not(f257), c264, f272 .
utility( r273 , 0 ).
query( r273 ).
? :: c275 .
? :: c274 .
r276 :- not(f144), c211, not(f214), c236, not(f257), c264, not(f272), c275 .
utility( r276 , 0 ).
query( r276 ).
r277 :- not(f144), c211, not(f214), c236, not(f257), c264, not(f272), c274 .
utility( r277 , 0 ).
query( r277 ).
0.1 :: f278 .
0.1 :: f279 .
0.1 :: f280 .
r281 :- not(f144), c210, f278, f279, f280 .
utility( r281 , 0 ).
query( r281 ).
? :: c282 .
r283 :- not(f144), c210, f278, f279, not(f280), c282 .
utility( r283 , 0 ).
query( r283 ).
? :: c286 .
? :: c285 .
? :: c284 .
0.1 :: f287 .
r288 :- not(f144), c210, f278, not(f279), c286, f287 .
utility( r288 , 0 ).
query( r288 ).
? :: c289 .
r290 :- not(f144), c210, f278, not(f279), c286, not(f287), c289 .
utility( r290 , 0 ).
query( r290 ).
0.1 :: f291 .
r292 :- not(f144), c210, f278, not(f279), c285, f291 .
utility( r292 , 0 ).
query( r292 ).
? :: c293 .
r294 :- not(f144), c210, f278, not(f279), c285, not(f291), c293 .
utility( r294 , 0 ).
query( r294 ).
0.1 :: f295 .
r296 :- not(f144), c210, f278, not(f279), c284, f295 .
utility( r296 , 0 ).
query( r296 ).
? :: c298 .
? :: c297 .
r299 :- not(f144), c210, f278, not(f279), c284, not(f295), c298 .
utility( r299 , 0 ).
query( r299 ).
r300 :- not(f144), c210, f278, not(f279), c284, not(f295), c297 .
utility( r300 , 0 ).
query( r300 ).
? :: c302 .
? :: c301 .
0.1 :: f303 .
0.1 :: f304 .
r305 :- not(f144), c210, not(f278), c302, f303, f304 .
utility( r305 , 0 ).
query( r305 ).
? :: c308 .
? :: c307 .
? :: c306 .
r309 :- not(f144), c210, not(f278), c302, f303, not(f304), c308 .
utility( r309 , 0 ).
query( r309 ).
r310 :- not(f144), c210, not(f278), c302, f303, not(f304), c307 .
utility( r310 , 0 ).
query( r310 ).
r311 :- not(f144), c210, not(f278), c302, f303, not(f304), c306 .
utility( r311 , 0 ).
query( r311 ).
? :: c313 .
? :: c312 .
0.1 :: f314 .
r315 :- not(f144), c210, not(f278), c302, not(f303), c313, f314 .
utility( r315 , 0 ).
query( r315 ).
? :: c318 .
? :: c317 .
? :: c316 .
r319 :- not(f144), c210, not(f278), c302, not(f303), c313, not(f314), c318 .
utility( r319 , 0 ).
query( r319 ).
r320 :- not(f144), c210, not(f278), c302, not(f303), c313, not(f314), c317 .
utility( r320 , 0 ).
query( r320 ).
r321 :- not(f144), c210, not(f278), c302, not(f303), c313, not(f314), c316 .
utility( r321 , 0 ).
query( r321 ).
0.1 :: f322 .
r323 :- not(f144), c210, not(f278), c302, not(f303), c312, f322 .
utility( r323 , 0 ).
query( r323 ).
? :: c324 .
r325 :- not(f144), c210, not(f278), c302, not(f303), c312, not(f322), c324 .
utility( r325 , 0 ).
query( r325 ).
0.1 :: f326 .
0.1 :: f327 .
r328 :- not(f144), c210, not(f278), c301, f326, f327 .
utility( r328 , 0 ).
query( r328 ).
? :: c329 .
r330 :- not(f144), c210, not(f278), c301, f326, not(f327), c329 .
utility( r330 , 0 ).
query( r330 ).
? :: c333 .
? :: c332 .
? :: c331 .
0.1 :: f334 .
r335 :- not(f144), c210, not(f278), c301, not(f326), c333, f334 .
utility( r335 , 0 ).
query( r335 ).
? :: c336 .
r337 :- not(f144), c210, not(f278), c301, not(f326), c333, not(f334), c336 .
utility( r337 , 0 ).
query( r337 ).
0.1 :: f338 .
r339 :- not(f144), c210, not(f278), c301, not(f326), c332, f338 .
utility( r339 , 0 ).
query( r339 ).
? :: c340 .
r341 :- not(f144), c210, not(f278), c301, not(f326), c332, not(f338), c340 .
utility( r341 , 0 ).
query( r341 ).
0.1 :: f342 .
r343 :- not(f144), c210, not(f278), c301, not(f326), c331, f342 .
utility( r343 , 0 ).
query( r343 ).
? :: c345 .
? :: c344 .
r346 :- not(f144), c210, not(f278), c301, not(f326), c331, not(f342), c345 .
utility( r346 , 0 ).
query( r346 ).
r347 :- not(f144), c210, not(f278), c301, not(f326), c331, not(f342), c344 .
utility( r347 , 0 ).
query( r347 ).
