is_prime(N) :-
    N > 1,
    is_prime_helper(N, 2).
is_prime_helper(N, Divisor) :-
    Divisor > sqrt(N),
    !.
is_prime_helper(N, Divisor) :-
    N mod Divisor =\= 0,
    NextDivisor is Divisor + 1,
    is_prime_helper(N, NextDivisor).
