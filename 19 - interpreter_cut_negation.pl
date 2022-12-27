% Example 18 - Meta-Interpreter For The Cut

fruit(apple).
fruit(orange) :- !.
fruit(banana).

% meta-interpreter that handles the cut
prove(true) :- !.
prove(!) :- !, ( true ; throw(cut) ).
prove((A,B)):- !, prove(A), prove(B).
prove(H) :- 
    catch((clause(H,B), prove(B)), cut, fail),
    write(H), write(" <- "), writeln(B).

% bad/1 will cause a resource error
bad(X) :- bad(bad(X)).

% numerology/1 throws an exception if X=13
numerology(X):- \+ X=13.
numerology(X):- X=13, throw(unlucky).

% testnumber handles that exception
testnumber(X) :- catch(numerology(X), unlucky, writeln("unlucky number")).