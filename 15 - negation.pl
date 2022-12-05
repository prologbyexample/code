% Example 15 - Negation By Failure

% fruit
fruit(apple).
fruit(orange).
fruit(banana).

% fruit that Mary likes
likes(mary, X) :- fruit(X).
