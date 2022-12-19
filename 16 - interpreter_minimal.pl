% Example 16 - Minimal Meta-Interpreter

% facts
mammal(dog).
mammal(cat).


% simplest meta-interpreter
prove(H) :- clause(H,B), B=true,
    write(H), write(" <- "), writeln(B).