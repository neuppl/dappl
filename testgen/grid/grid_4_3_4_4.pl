0.1 :: f391 .
0.1 :: f392 .
0.1 :: f393 .
0.1 :: f394 .
r395 :- f391, f392, f393, f394 .
utility( r395 , 1 ).
query( r395 ).
? :: c396 .
r397 :- f391, f392, f393, not(f394), c396 .
utility( r397 , 1 ).
query( r397 ).
? :: c398 .
0.1 :: f399 .
r400 :- f391, f392, not(f393), c398, f399 .
utility( r400 , 1 ).
query( r400 ).
? :: c401 .
r402 :- f391, f392, not(f393), c398, not(f399), c401 .
utility( r402 , 1 ).
query( r402 ).
? :: c404 .
? :: c403 .
0.1 :: f405 .
0.1 :: f406 .
r407 :- f391, not(f392), c404, f405, f406 .
utility( r407 , 1 ).
query( r407 ).
? :: c408 .
r409 :- f391, not(f392), c404, f405, not(f406), c408 .
utility( r409 , 1 ).
query( r409 ).
? :: c410 .
0.1 :: f411 .
r412 :- f391, not(f392), c404, not(f405), c410, f411 .
utility( r412 , 1 ).
query( r412 ).
? :: c413 .
r414 :- f391, not(f392), c404, not(f405), c410, not(f411), c413 .
utility( r414 , 1 ).
query( r414 ).
0.1 :: f415 .
0.1 :: f416 .
r417 :- f391, not(f392), c403, f415, f416 .
utility( r417 , 1 ).
query( r417 ).
? :: c418 .
r419 :- f391, not(f392), c403, f415, not(f416), c418 .
utility( r419 , 1 ).
query( r419 ).
? :: c421 .
? :: c420 .
0.1 :: f422 .
r423 :- f391, not(f392), c403, not(f415), c421, f422 .
utility( r423 , 1 ).
query( r423 ).
? :: c424 .
r425 :- f391, not(f392), c403, not(f415), c421, not(f422), c424 .
utility( r425 , 1 ).
query( r425 ).
0.1 :: f426 .
r427 :- f391, not(f392), c403, not(f415), c420, f426 .
utility( r427 , 1 ).
query( r427 ).
? :: c429 .
? :: c428 .
r430 :- f391, not(f392), c403, not(f415), c420, not(f426), c429 .
utility( r430 , 1 ).
query( r430 ).
r431 :- f391, not(f392), c403, not(f415), c420, not(f426), c428 .
utility( r431 , 0 ).
query( r431 ).
? :: c433 .
? :: c432 .
r434 :- not(f391), c433 .
utility( r434 , 0 ).
query( r434 ).
0.1 :: f435 .
0.1 :: f436 .
0.1 :: f437 .
r438 :- not(f391), c432, f435, f436, f437 .
utility( r438 , 1 ).
query( r438 ).
? :: c439 .
r440 :- not(f391), c432, f435, f436, not(f437), c439 .
utility( r440 , 1 ).
query( r440 ).
? :: c441 .
0.1 :: f442 .
r443 :- not(f391), c432, f435, not(f436), c441, f442 .
utility( r443 , 1 ).
query( r443 ).
? :: c444 .
r445 :- not(f391), c432, f435, not(f436), c441, not(f442), c444 .
utility( r445 , 1 ).
query( r445 ).
? :: c447 .
? :: c446 .
0.1 :: f448 .
0.1 :: f449 .
r450 :- not(f391), c432, not(f435), c447, f448, f449 .
utility( r450 , 1 ).
query( r450 ).
? :: c451 .
r452 :- not(f391), c432, not(f435), c447, f448, not(f449), c451 .
utility( r452 , 1 ).
query( r452 ).
? :: c453 .
0.1 :: f454 .
r455 :- not(f391), c432, not(f435), c447, not(f448), c453, f454 .
utility( r455 , 1 ).
query( r455 ).
? :: c456 .
r457 :- not(f391), c432, not(f435), c447, not(f448), c453, not(f454), c456 .
utility( r457 , 1 ).
query( r457 ).
0.1 :: f458 .
0.1 :: f459 .
r460 :- not(f391), c432, not(f435), c446, f458, f459 .
utility( r460 , 1 ).
query( r460 ).
? :: c462 .
? :: c461 .
r463 :- not(f391), c432, not(f435), c446, f458, not(f459), c462 .
utility( r463 , 1 ).
query( r463 ).
r464 :- not(f391), c432, not(f435), c446, f458, not(f459), c461 .
utility( r464 , 0 ).
query( r464 ).
? :: c466 .
? :: c465 .
0.1 :: f467 .
r468 :- not(f391), c432, not(f435), c446, not(f458), c466, f467 .
utility( r468 , 1 ).
query( r468 ).
? :: c469 .
r470 :- not(f391), c432, not(f435), c446, not(f458), c466, not(f467), c469 .
utility( r470 , 1 ).
query( r470 ).
0.1 :: f471 .
r472 :- not(f391), c432, not(f435), c446, not(f458), c465, f471 .
utility( r472 , 0 ).
query( r472 ).
? :: c474 .
? :: c473 .
r475 :- not(f391), c432, not(f435), c446, not(f458), c465, not(f471), c474 .
utility( r475 , 1 ).
query( r475 ).
r476 :- not(f391), c432, not(f435), c446, not(f458), c465, not(f471), c473 .
utility( r476 , 0 ).
query( r476 ).
