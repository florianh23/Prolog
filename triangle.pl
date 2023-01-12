
valid(A,B,C):- 
    A > 0,
    B > 0,
    C > 0,
    A + B >= C,
    B + C >= A,
    A + C >= B. 

triangle(A, B, C, "scalene"):-
    valid(A,B,C),
    A \= B, 
    B \= C, 
    C \= A.


isosceles(A, A, _).
isosceles(A, _, A).
isosceles(_, A, A).


triangle(A, A, A, "equilateral"):-
    A > 0.

triangle(Side1, Side2, Side3, "isosceles") :-
        valid(Side1, Side2, Side3),
        isosceles(Side1, Side2, Side3),
        !.