% Example 14 - The Cut For Efficiency

% water/2 relates temperature to state
water(Temp, ice) :- Temp =< 0.
water(Temp, liquid) :- Temp > 0, Temp < 100.
water(Temp, gas) :- Temp >= 100.

% clpfd finite domain
:- use_module(library(clpfd)).

% water2/2 relates temperature to state
water2(Temp, ice) :- Temp #=< 0.
water2(Temp, liquid) :- Temp #> 0, Temp #< 100.
water2(Temp, gas) :- Temp #>= 100.