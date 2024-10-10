0.1 :: f113 .
0.1 :: f114 .
0.1 :: f115 .
r116 :- f113, f114, f115 .
utility( r116 , 0 ).
query( r116 ).
? :: c117 .
r118 :- f113, f114, not(f115), c117 .
utility( r118 , 0 ).
query( r118 ).
? :: c119 .
0.1 :: f120 .
r121 :- f113, not(f114), c119, f120 .
utility( r121 , 0 ).
query( r121 ).
? :: c122 .
r123 :- f113, not(f114), c119, not(f120), c122 .
utility( r123 , 0 ).
query( r123 ).
? :: c125 .
? :: c124 .
0.1 :: f126 .
0.1 :: f127 .
r128 :- not(f113), c125, f126, f127 .
utility( r128 , 0 ).
query( r128 ).
? :: c130 .
? :: c129 .
r131 :- not(f113), c125, f126, not(f127), c130 .
utility( r131 , 0 ).
query( r131 ).
r132 :- not(f113), c125, f126, not(f127), c129 .
utility( r132 , 0 ).
query( r132 ).
? :: c135 .
? :: c134 .
? :: c133 .
0.1 :: f136 .
r137 :- not(f113), c125, not(f126), c135, f136 .
utility( r137 , 0 ).
query( r137 ).
? :: c140 .
? :: c139 .
? :: c138 .
r141 :- not(f113), c125, not(f126), c135, not(f136), c140 .
utility( r141 , 0 ).
query( r141 ).
r142 :- not(f113), c125, not(f126), c135, not(f136), c139 .
utility( r142 , 0 ).
query( r142 ).
r143 :- not(f113), c125, not(f126), c135, not(f136), c138 .
utility( r143 , 0 ).
query( r143 ).
0.1 :: f144 .
r145 :- not(f113), c125, not(f126), c134, f144 .
utility( r145 , 0 ).
query( r145 ).
? :: c147 .
? :: c146 .
r148 :- not(f113), c125, not(f126), c134, not(f144), c147 .
utility( r148 , 0 ).
query( r148 ).
r149 :- not(f113), c125, not(f126), c134, not(f144), c146 .
utility( r149 , 0 ).
query( r149 ).
0.1 :: f150 .
r151 :- not(f113), c125, not(f126), c133, f150 .
utility( r151 , 0 ).
query( r151 ).
? :: c152 .
r153 :- not(f113), c125, not(f126), c133, not(f150), c152 .
utility( r153 , 0 ).
query( r153 ).
0.1 :: f154 .
0.1 :: f155 .
r156 :- not(f113), c124, f154, f155 .
utility( r156 , 0 ).
query( r156 ).
? :: c157 .
r158 :- not(f113), c124, f154, not(f155), c157 .
utility( r158 , 0 ).
query( r158 ).
? :: c159 .
0.1 :: f160 .
r161 :- not(f113), c124, not(f154), c159, f160 .
utility( r161 , 0 ).
query( r161 ).
? :: c162 .
r163 :- not(f113), c124, not(f154), c159, not(f160), c162 .
utility( r163 , 0 ).
query( r163 ).
