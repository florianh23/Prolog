% find out if a list is a palindrome


is_palindrome([_]).
is_palindrome(H):- reverse(H,H).