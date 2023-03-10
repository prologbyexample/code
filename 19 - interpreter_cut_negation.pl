% Example 19 - Meta-Interpreter For The Cut

fruit(apple).
fruit(orange) :- !.
fruit(banana).

% meta-interpreter that handles the cut
prove(true) :- !.
prove(!) :- !, ( true ; throw(cut_exception) ).
prove((A,B)):- !, prove(A), prove(B).
prove(H) :- 
    catch((clause(H,B), prove(B)), cut_exception, fail),
    write(H), write(" <- "), writeln(B).
