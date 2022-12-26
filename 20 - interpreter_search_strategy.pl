% map locations
% 
%  a b c
%  d e f
%  g h i
%
% map paths
% 
%  x y x
%  x x x
%  x - x
%

node(a). node(b). node(c).
node(d). node(e). node(f).
node(g). node(h). node(i).

% additional path (y)
path(a,b). path(b,c).

path(a,d).
path(d,e). path(e,f).
path(d,g). 
path(f,c). path(f,i).

connected(X,Y) :- path(X,Y).
connected(X,Y) :- path(Y,X).

%journey(X, X, [(X,X)]) :- !.
journey(X, Y, [(X,Y)]) :- 
    write("testing -- "), writeln((X,Y)),
    connected(X,Y).
journey(X, Y, J2) :-
    [(X,A)|J1]=J2,
    write("testing .. "), writeln((X,A)),
    connected(X,A),
    journey(A,Y, J1).


% meta-interpreter for rules with multiple goals
%prove(Goal, Max) :- prove(Goal, Max, 0).

prove(true, _) :- !.
prove(A=B, _) :- !, A=B.
prove(!,_) :- !, ( true ; throw(cut) ).
prove((A,B), N):- !, prove(A, N), prove(B, N).
prove(H, N) :-
    write("N = "), writeln(N),
    %write(H), write(" <- "), writeln(B),
    N > 0,
    N1 is N-1,
    catch((clause(H,B), prove(B, N1)), cut, fail).


prove2(true, _) :- !.
prove2(A=B, _) :- !, A=B.
prove2(write(X),_) :- !, write(X).
prove2(writeln(X),_) :- !, writeln(X).
prove2((A,B), N):- !, prove2(A, N), prove2(B, N).
prove2(H, N) :-
    write("N = "), writeln(N),
    %write(H), write(" <- "), writeln(B),
    N > 0,
    N1 is N-1,
    clause(H,B), prove2(B, N1).
