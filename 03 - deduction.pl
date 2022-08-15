% Example 03 - Deduction

% facts
mammal(dog).
mammal(cat).

animal(X) :- mammal(X).
