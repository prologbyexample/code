% Example 15 - Negation By Failure

% fruit
fruit(apple). 
fruit(orange). 
fruit(banana).

% colour
yellow(banana).

% Mary likes all fruit 
likes(mary, X) :- fruit(X).

% James like all fruit, as long as it is yellow
likes(james, X) :- fruit(X), yellow(X).

% Sally likes all fruit, except yellow fruit
likes(sally, X) :- fruit(X), negation(yellow(X)).

% negation as failure
negation(G) :- call(G), !, fail. 
negation(_).