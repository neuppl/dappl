1/3::prize(1) ; 1/3::prize(2) ; 1/3::prize(3).
0.5 :: x :- prize(1).
y :- \+(prize(1)) , prize(2).
monty :- x.
monty :- y.
evidence(monty, true).
? :: switch.
winprizeswitch :- switch, prize(2).
winprizenoswitch :- \+(switch), prize(1).
utility(winprizeswitch, 500).
utility(winprizenoswitch, 500).

