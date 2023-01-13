
%Multiply List by a factor
multiply([],_,[]).
multiply([H|T], X , [Y|Ys]):- Y is H * X, multiply(T, X, Ys).




