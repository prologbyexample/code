% Example 20 - Meta-Interpreter With Fixed Depth Search

% map locations and links
% 
%  a - b - c
%  |       |
%  d - e - f
%  |       |
%  g   h   i

% maze locations and links
link(a,b). link(b,c). link(a,d).
link(d,e). link(e,f). link(d,g).
link(f,c). link(f,i).

% two rooms are connected if linked
connected(X,Y) :- link(X,Y).
connected(X,Y) :- link(Y,X).

% journey between two locations
journey(X, Y, [(X,Y)]) :- connected(X,Y).
journey(X, Y, J) :- [(X,A)|J1]=J, connected(X,A), journey(A,Y, J1).

% meta-interpreter with fixed depth search
prove(true, _) :- !.
prove(A=B, _) :- !, A=B.
prove((A,B), Depth):- !, prove(A, Depth), prove(B, Depth).
prove(H, Depth) :-
    Depth > 0,
    NextDepth is Depth-1,
    clause(H,B), prove(B, NextDepth).
