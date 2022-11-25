% Example 13 - The Cut With More Backtracking

% main meal
homemade(pizza). 
homemade(soup). 
homemade(fish).

% dessert
ripe(apple). 
ripe(orange). 
ripe(banana).

% meal has tasty dish and ripe fruit
meal(Main, Fruit) :- homemade(Main), !, ripe(Fruit).