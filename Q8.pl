prime_factors(N, Factors) :-
    N > 1,
    prime_factors_helper(N, 2, Factors).
prime_factors_helper(1, _, []).
prime_factors_helper(N, Factor, [Factor | Rest]) :-
    N mod Factor =:= 0,
    N1 is N // Factor,
    prime_factors_helper(N1, Factor, Rest).
prime_factors_helper(N, Factor, Factors) :-
    N mod Factor =\= 0,
    NextFactor is Factor + 1,
    prime_factors_helper(N, NextFactor, Factors).
