1.0 :: f1 .
0.0 :: f2 .
0.5 :: f3 .
0.0001 :: f4 .
0.0001 :: f5 .
r6 :- f1, not(f4), f3 .
r6 :- f2, not(f1), f3 .
r7 :- f1, not(f5), not(f3) .
r7 :- f2, not(f1), not(f3) .
0.5 :: f8 .
0.0001 :: f9 .
0.0001 :: f10 .
r11 :- r6, not(f9), f8 .
r11 :- r7, not(r6), f8 .
r12 :- r6, not(f10), not(f8) .
r12 :- r7, not(r6), not(f8) .
r13 :- r11 .
r13 :- r12 .
evidence( r13 , false ).
? :: c17 .
? :: c16 .
? :: c15 .
? :: c14 .
r27 :- not(c14), not(c15), not(c16), c17, not(r6) .
utility( r27 , 4 ).
? :: c26 .
? :: c25 .
? :: c24 .
r19 :- not(c14), not(c15), not(c16), c17, r6, not(c24), not(c25), c26, not(r7) .
utility( r19 , 85 ).
r18 :- not(c14), not(c15), not(c16), c17, r6, not(c24), not(c25), c26, r7 .
utility( r18 , 44 ).
r21 :- not(c14), not(c15), not(c16), c17, r6, not(c24), c25, not(c26), not(r11) .
utility( r21 , 41 ).
r20 :- not(c14), not(c15), not(c16), c17, r6, not(c24), c25, not(c26), r11 .
utility( r20 , 82 ).
r23 :- not(c14), not(c15), not(c16), c17, r6, c24, not(c25), not(c26), not(r12) .
utility( r23 , 0 ).
r22 :- not(c14), not(c15), not(c16), c17, r6, c24, not(c25), not(c26), r12 .
utility( r22 , 39 ).
query( c26 ).
query( c25 ).
query( c24 ).
r37 :- not(c14), not(c15), c16, not(c17), not(r7) .
utility( r37 , 78 ).
? :: c36 .
? :: c35 .
? :: c34 .
r29 :- not(c14), not(c15), c16, not(c17), r7, not(c34), not(c35), c36, not(r6) .
utility( r29 , 21 ).
r28 :- not(c14), not(c15), c16, not(c17), r7, not(c34), not(c35), c36, r6 .
utility( r28 , 20 ).
r31 :- not(c14), not(c15), c16, not(c17), r7, not(c34), c35, not(c36), not(r11) .
utility( r31 , 17 ).
r30 :- not(c14), not(c15), c16, not(c17), r7, not(c34), c35, not(c36), r11 .
utility( r30 , 70 ).
r33 :- not(c14), not(c15), c16, not(c17), r7, c34, not(c35), not(c36), not(r12) .
utility( r33 , 49 ).
r32 :- not(c14), not(c15), c16, not(c17), r7, c34, not(c35), not(c36), r12 .
utility( r32 , 85 ).
query( c36 ).
query( c35 ).
query( c34 ).
r47 :- not(c14), c15, not(c16), not(c17), not(r11) .
utility( r47 , 89 ).
? :: c46 .
? :: c45 .
? :: c44 .
r39 :- not(c14), c15, not(c16), not(c17), r11, not(c44), not(c45), c46, not(r6) .
utility( r39 , 12 ).
r38 :- not(c14), c15, not(c16), not(c17), r11, not(c44), not(c45), c46, r6 .
utility( r38 , 15 ).
r41 :- not(c14), c15, not(c16), not(c17), r11, not(c44), c45, not(c46), not(r7) .
utility( r41 , 6 ).
r40 :- not(c14), c15, not(c16), not(c17), r11, not(c44), c45, not(c46), r7 .
utility( r40 , 1 ).
r43 :- not(c14), c15, not(c16), not(c17), r11, c44, not(c45), not(c46), not(r12) .
utility( r43 , 69 ).
r42 :- not(c14), c15, not(c16), not(c17), r11, c44, not(c45), not(c46), r12 .
utility( r42 , 28 ).
query( c46 ).
query( c45 ).
query( c44 ).
r57 :- c14, not(c15), not(c16), not(c17), not(r12) .
utility( r57 , 3 ).
? :: c56 .
? :: c55 .
? :: c54 .
r49 :- c14, not(c15), not(c16), not(c17), r12, not(c54), not(c55), c56, not(r6) .
utility( r49 , 14 ).
r48 :- c14, not(c15), not(c16), not(c17), r12, not(c54), not(c55), c56, r6 .
utility( r48 , 93 ).
r51 :- c14, not(c15), not(c16), not(c17), r12, not(c54), c55, not(c56), not(r7) .
utility( r51 , 23 ).
r50 :- c14, not(c15), not(c16), not(c17), r12, not(c54), c55, not(c56), r7 .
utility( r50 , 23 ).
r53 :- c14, not(c15), not(c16), not(c17), r12, c54, not(c55), not(c56), not(r11) .
utility( r53 , 96 ).
r52 :- c14, not(c15), not(c16), not(c17), r12, c54, not(c55), not(c56), r11 .
utility( r52 , 44 ).
query( c56 ).
query( c55 ).
query( c54 ).
query( c17 ).
query( c16 ).
query( c15 ).
query( c14 ).
