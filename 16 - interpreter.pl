% Example 16 - Interpreter Metaprogramming

% fruit
fruit(apple) :- true. 
fruit(orange). 
fruit(banana).

% colour
yellow(banana).

% Mary likes all fruit 
likes(mary, X) :- fruit(X).

% James likes all fruit, as long as it is yellow
likes(james, X) :- fruit(X), yellow(X).

% Sally likes all fruit, except yellow fruit
likes(sally, X) :- fruit(X), \+ (yellow(X)).


% Example 04 - Deduction

% facts
mammal(dog).
mammal(cat).

% relation
animal(X) :- mammal(X).


% simplest meta-interpreter
solve(true) :- !.
solve((A,B)):- !, solve(A), solve(B).
solve(A) :- clause(A,B), solve(B), write(A), write(" <- "), writeln(B).