my_last(_,[]).
my_last(X,[X]).
my_last(X,[Y|Ys]):- my_last(X,Ys).
