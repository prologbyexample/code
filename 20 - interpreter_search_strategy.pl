% Example 20 - Meta-Interpreter With Fixed Depth Search

% map locations and paths
% 
%  a - b - c
%  |       |
%  d - e - f
%  |       |
%  g   h   i

path(a,b). path(b,c). path(a,d).
path(d,e). path(e,f). path(d,g). 
path(f,c). path(f,i).

connected(X,Y) :- path(X,Y).
connected(X,Y) :- path(Y,X).

journey(X, Y, [(X,Y)]) :- 
    %write("testing -- "), writeln((X,Y)),
    connected(X,Y).
journey(X, Y, J) :-
    [(X,A)|J1]=J,
    %write("testing .. "), writeln((X,A)),
    connected(X,A),
    journey(A,Y, J1).


% meta-interpreter with fixed depth search
prove(true, _) :- !.
prove(A=B, _) :- !, A=B.
prove(write(X),_) :- !, write(X).
prove(writeln(X),_) :- !, writeln(X).
prove((A,B), Depth):- !, prove(A, Depth), prove(B, Depth).
prove(H, Depth) :-
    %write("Depth = "), writeln(Depth),
    Depth > 0,
    NextDepth is Depth-1,
    clause(H,B),
    %write(H), write(" <- "), writeln(B),
    prove(B, NextDepth).


%prove(connected(a,b),2).
%prove(connected(a,b),1).
%
% prove( journey(a,e,X), 4).
% prove( journey(a,e,X), 6).
% journey(a,e,X) - doesn't terminate