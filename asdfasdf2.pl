either :- lung, tub.
either :- lung, \+tub.
either :- \+lung, tub.
query(tub).
query(lung).
query(dysp).
query(xray).
query(bronc).
query(asia).
query(smoke).
query(either).
?::asia.
?::smoke.
?::dec_2.
?::dec_3.
utility(tub,3).
utility(\+(tub),-6).
utility(lung,-8).
utility(\+(lung),-27).
utility(dysp,7).
utility(\+(dysp),44).
utility(\+(xray),-27).
utility(\+(bronc),32).
utility(asia,2).
utility(smoke,39).
utility(\+(either),-10).
0.1::lung :- smoke.
0.01::lung :- \+smoke.
0.05::tub :- asia.
0.01::tub :- \+asia.
0.6::bronc :- smoke.
0.3::bronc :- \+smoke.
0.0::either :- \+lung, \+tub.
0.98::xray :- either.
0.05::xray :- \+either.
0.9::dysp :- bronc, either.
0.8::dysp :- bronc, \+either.
0.7::dysp :- \+bronc, either.
0.1::dysp :- \+bronc, \+either.
0.05::xray :- dec_2.
0.7::dysp :- dec_3.