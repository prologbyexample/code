% Example 17 - Meta-Interpreter for Deduction

% facts
mammal(dog).
mammal(cat).

% relations
animal(X) :- mammal(X).
lifeform(X) :- animal(X).

% meta-interpreter that covers deduction
prove(true) :- !.
prove(H) :- clause(H,B), prove(B),
   write(H), write(" <- "), writeln(B).