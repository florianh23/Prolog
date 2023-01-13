
%combine two lists in ascending order

combine([L],[],[L]).
combine([],[L],[L]).

combine([X|L1], [Y|L2], [X|R]):-  X < Y, combine(L1, [Y|L2], R) .
combine([X|L1], [Y|L2], [Y|R]):-  X >= Y, combine(L2, [X|L1], R) .

    % X < Y -> L =[X|R], combine(Xs, [Y|Ys], L);
    % X >= Y -> L = [Y|R], combine([X|Xs], Y, L);
