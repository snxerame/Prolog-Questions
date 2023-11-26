% Predicate to encode consecutive duplicates
encode([], []).
encode([X], [[1, X]]).
encode([X, X | T], [[Q, X] | EncodedT]) :-
    count_consecutive([X, X | T], Q, Remaining),
    encode(Remaining, EncodedT).
encode([X, Y | T], [[1, X] | EncodedT]) :-
    X \= Y,
    encode([Y | T], EncodedT).

% Helper predicate to count consecutive duplicates
count_consecutive([], 0, []).
count_consecutive([X], 1, []).
count_consecutive([X, X | T], Q, Remaining) :-
    count_consecutive([X | T], Q1, Remaining),
    Q is Q1 + 1.
count_consecutive([X, Y | T], 1, [Y | T]) :-
    X \= Y.

% Example usage:
% ?- encode([a, a, a, b, c, c, a, a, d], X).
% X = [[3, a], [1, b], [2, c], [2, a], [1, d]].
