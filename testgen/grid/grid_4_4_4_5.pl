0.1 :: f311 .
0.1 :: f312 .
0.1 :: f313 .
0.1 :: f314 .
r315 :- f311, f312, f313, f314 .
utility( r315 , 1 ).
query( r315 ).
? :: c318 .
? :: c317 .
? :: c316 .
r319 :- f311, f312, f313, not(f314), c318 .
utility( r319 , 0 ).
query( r319 ).
r320 :- f311, f312, f313, not(f314), c317 .
utility( r320 , 1 ).
query( r320 ).
r321 :- f311, f312, f313, not(f314), c316 .
utility( r321 , 0 ).
query( r321 ).
? :: c322 .
0.1 :: f323 .
r324 :- f311, f312, not(f313), c322, f323 .
utility( r324 , 1 ).
query( r324 ).
? :: c327 .
? :: c326 .
? :: c325 .
r328 :- f311, f312, not(f313), c322, not(f323), c327 .
utility( r328 , 0 ).
query( r328 ).
r329 :- f311, f312, not(f313), c322, not(f323), c326 .
utility( r329 , 1 ).
query( r329 ).
r330 :- f311, f312, not(f313), c322, not(f323), c325 .
utility( r330 , 0 ).
query( r330 ).
? :: c332 .
? :: c331 .
0.1 :: f333 .
0.1 :: f334 .
r335 :- f311, not(f312), c332, f333, f334 .
utility( r335 , 0 ).
query( r335 ).
? :: c338 .
? :: c337 .
? :: c336 .
r339 :- f311, not(f312), c332, f333, not(f334), c338 .
utility( r339 , 0 ).
query( r339 ).
r340 :- f311, not(f312), c332, f333, not(f334), c337 .
utility( r340 , 1 ).
query( r340 ).
r341 :- f311, not(f312), c332, f333, not(f334), c336 .
utility( r341 , 0 ).
query( r341 ).
? :: c342 .
0.1 :: f343 .
r344 :- f311, not(f312), c332, not(f333), c342, f343 .
utility( r344 , 1 ).
query( r344 ).
? :: c347 .
? :: c346 .
? :: c345 .
r348 :- f311, not(f312), c332, not(f333), c342, not(f343), c347 .
utility( r348 , 0 ).
query( r348 ).
r349 :- f311, not(f312), c332, not(f333), c342, not(f343), c346 .
utility( r349 , 1 ).
query( r349 ).
r350 :- f311, not(f312), c332, not(f333), c342, not(f343), c345 .
utility( r350 , 0 ).
query( r350 ).
0.1 :: f351 .
0.1 :: f352 .
r353 :- f311, not(f312), c331, f351, f352 .
utility( r353 , 0 ).
query( r353 ).
? :: c354 .
r355 :- f311, not(f312), c331, f351, not(f352), c354 .
utility( r355 , 0 ).
query( r355 ).
? :: c356 .
0.1 :: f357 .
r358 :- f311, not(f312), c331, not(f351), c356, f357 .
utility( r358 , 0 ).
query( r358 ).
? :: c359 .
r360 :- f311, not(f312), c331, not(f351), c356, not(f357), c359 .
utility( r360 , 0 ).
query( r360 ).
? :: c362 .
? :: c361 .
0.1 :: f363 .
0.1 :: f364 .
0.1 :: f365 .
r366 :- not(f311), c362, f363, f364, f365 .
utility( r366 , 0 ).
query( r366 ).
? :: c368 .
? :: c367 .
r369 :- not(f311), c362, f363, f364, not(f365), c368 .
utility( r369 , 0 ).
query( r369 ).
r370 :- not(f311), c362, f363, f364, not(f365), c367 .
utility( r370 , 1 ).
query( r370 ).
? :: c371 .
0.1 :: f372 .
r373 :- not(f311), c362, f363, not(f364), c371, f372 .
utility( r373 , 0 ).
query( r373 ).
? :: c375 .
? :: c374 .
r376 :- not(f311), c362, f363, not(f364), c371, not(f372), c375 .
utility( r376 , 0 ).
query( r376 ).
r377 :- not(f311), c362, f363, not(f364), c371, not(f372), c374 .
utility( r377 , 1 ).
query( r377 ).
? :: c379 .
? :: c378 .
0.1 :: f380 .
0.1 :: f381 .
r382 :- not(f311), c362, not(f363), c379, f380, f381 .
utility( r382 , 0 ).
query( r382 ).
? :: c384 .
? :: c383 .
r385 :- not(f311), c362, not(f363), c379, f380, not(f381), c384 .
utility( r385 , 0 ).
query( r385 ).
r386 :- not(f311), c362, not(f363), c379, f380, not(f381), c383 .
utility( r386 , 1 ).
query( r386 ).
? :: c387 .
0.1 :: f388 .
r389 :- not(f311), c362, not(f363), c379, not(f380), c387, f388 .
utility( r389 , 1 ).
query( r389 ).
? :: c391 .
? :: c390 .
r392 :- not(f311), c362, not(f363), c379, not(f380), c387, not(f388), c391 .
utility( r392 , 0 ).
query( r392 ).
r393 :- not(f311), c362, not(f363), c379, not(f380), c387, not(f388), c390 .
utility( r393 , 1 ).
query( r393 ).
0.1 :: f394 .
0.1 :: f395 .
r396 :- not(f311), c362, not(f363), c378, f394, f395 .
utility( r396 , 1 ).
query( r396 ).
? :: c398 .
? :: c397 .
r399 :- not(f311), c362, not(f363), c378, f394, not(f395), c398 .
utility( r399 , 0 ).
query( r399 ).
r400 :- not(f311), c362, not(f363), c378, f394, not(f395), c397 .
utility( r400 , 1 ).
query( r400 ).
? :: c401 .
0.1 :: f402 .
r403 :- not(f311), c362, not(f363), c378, not(f394), c401, f402 .
utility( r403 , 0 ).
query( r403 ).
? :: c405 .
? :: c404 .
r406 :- not(f311), c362, not(f363), c378, not(f394), c401, not(f402), c405 .
utility( r406 , 0 ).
query( r406 ).
r407 :- not(f311), c362, not(f363), c378, not(f394), c401, not(f402), c404 .
utility( r407 , 1 ).
query( r407 ).
0.1 :: f408 .
0.1 :: f409 .
0.1 :: f410 .
r411 :- not(f311), c361, f408, f409, f410 .
utility( r411 , 0 ).
query( r411 ).
? :: c414 .
? :: c413 .
? :: c412 .
r415 :- not(f311), c361, f408, f409, not(f410), c414 .
utility( r415 , 0 ).
query( r415 ).
r416 :- not(f311), c361, f408, f409, not(f410), c413 .
utility( r416 , 1 ).
query( r416 ).
r417 :- not(f311), c361, f408, f409, not(f410), c412 .
utility( r417 , 0 ).
query( r417 ).
? :: c418 .
0.1 :: f419 .
r420 :- not(f311), c361, f408, not(f409), c418, f419 .
utility( r420 , 1 ).
query( r420 ).
? :: c423 .
? :: c422 .
? :: c421 .
r424 :- not(f311), c361, f408, not(f409), c418, not(f419), c423 .
utility( r424 , 0 ).
query( r424 ).
r425 :- not(f311), c361, f408, not(f409), c418, not(f419), c422 .
utility( r425 , 1 ).
query( r425 ).
r426 :- not(f311), c361, f408, not(f409), c418, not(f419), c421 .
utility( r426 , 0 ).
query( r426 ).
? :: c428 .
? :: c427 .
0.1 :: f429 .
0.1 :: f430 .
r431 :- not(f311), c361, not(f408), c428, f429, f430 .
utility( r431 , 0 ).
query( r431 ).
? :: c434 .
? :: c433 .
? :: c432 .
r435 :- not(f311), c361, not(f408), c428, f429, not(f430), c434 .
utility( r435 , 0 ).
query( r435 ).
r436 :- not(f311), c361, not(f408), c428, f429, not(f430), c433 .
utility( r436 , 1 ).
query( r436 ).
r437 :- not(f311), c361, not(f408), c428, f429, not(f430), c432 .
utility( r437 , 0 ).
query( r437 ).
? :: c438 .
0.1 :: f439 .
r440 :- not(f311), c361, not(f408), c428, not(f429), c438, f439 .
utility( r440 , 1 ).
query( r440 ).
? :: c443 .
? :: c442 .
? :: c441 .
r444 :- not(f311), c361, not(f408), c428, not(f429), c438, not(f439), c443 .
utility( r444 , 0 ).
query( r444 ).
r445 :- not(f311), c361, not(f408), c428, not(f429), c438, not(f439), c442 .
utility( r445 , 1 ).
query( r445 ).
r446 :- not(f311), c361, not(f408), c428, not(f429), c438, not(f439), c441 .
utility( r446 , 0 ).
query( r446 ).
0.1 :: f447 .
0.1 :: f448 .
r449 :- not(f311), c361, not(f408), c427, f447, f448 .
utility( r449 , 0 ).
query( r449 ).
? :: c450 .
r451 :- not(f311), c361, not(f408), c427, f447, not(f448), c450 .
utility( r451 , 0 ).
query( r451 ).
? :: c452 .
0.1 :: f453 .
r454 :- not(f311), c361, not(f408), c427, not(f447), c452, f453 .
utility( r454 , 0 ).
query( r454 ).
? :: c455 .
r456 :- not(f311), c361, not(f408), c427, not(f447), c452, not(f453), c455 .
utility( r456 , 0 ).
query( r456 ).
