% Please visit https://exercism.io/tracks/prolog/installation
% for instructions on setting up prolog.
% Visit https://exercism.io/tracks/prolog/tests
% for help running the tests for prolog exercises.

% Replace the goal below with
% your implementation.

%! create(+DimTuple)
%
% The create/1 predicate succeeds if the DimTuple contains valid chessboard 
% dimensions, e.g. (0,0) or (2,4).
create((X,Y)) :- X>=0 , Y>=0 , X=<7 , Y=<7.

%! attack(+FromTuple, +ToTuple)
%
% The attack/2 predicate succeeds if a queen positioned on ToTuple is 
% vulnerable to an attack by another queen positioned on FromTuple.
attack((X , _), (X , _)) :- !.
attack((_ , Y), (_ , Y)) :- !.
attack((X1, Y1), (X2, Y2)):- 
	abs(X1 - X2) =:= abs(Y1 - Y2).
	