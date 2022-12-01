% Example 14 - The Cut For Efficiency

% water/2 relates temperature to state
water(Temp, solid) :- Temp =< 0.
water(Temp, liquid) :- Temp > 0, Temp < 100.
water(Temp, gas) :- Temp >= 100.

% h2o/2 uses the cut to be more efficient
h2o(Temp, solid) :- Temp =< 0, !.
h2o(Temp, liquid) :- Temp > 0, Temp < 100, !.
h2o(Temp, gas) :- Temp >= 100. 
