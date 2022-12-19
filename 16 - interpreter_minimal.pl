% Example 16 - Minimal Meta-Interpreter

% facts
mammal(dog).
mammal(cat).

% relations
animal(X) :- mammal(X).
lifeform(X) :- animal(X).

% simplest meta-interpreter
prove(true).
prove(H) :- clause(H,B), prove(B),
    write(H), write(" <- "), writeln(B).
