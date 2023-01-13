%reverse a list
reverse([],Z,Z).
%Z=Z
reverse([H|T],X,Acc):- reverse(T, X, [H|Acc]). 

