% Example 16 - Minimal Meta-Interpreter For Facts

% facts
mammal(dog).
mammal(cat).

% simplest meta-interpreter
prove(H) :- clause(H,B), B=true,
    write(H), write(" <- "), writeln(B).