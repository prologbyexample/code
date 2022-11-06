% Example 13 - The Cut With More Backtracking

% homemade food
homemade(soup).
homemade(pizza) :- !.
homemade(fish).

% ripe fruit
ripe(apple).
ripe(banana).

meal(Main, Fruit) :- homemade(Main), ripe(Fruit).