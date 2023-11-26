full_words(Number) :-
    number_words(Number, Words),
    atomic_list_concat(Words, '-', FullWord),
    write(FullWord).
number_words(0, ['Zero']).
number_words(N, Words) :-
    N > 0,
    number_words_helper(N, RevWords),
    reverse(RevWords, Words).
number_words_helper(0, []).
number_words_helper(N, [Word | Rest]) :-
    N > 0,
    Ones is N mod 10,
    digit_word(Ones, Word),
    N1 is N // 10,
    number_words_helper(N1, Rest).
digit_word(0, 'Zero').
digit_word(1, 'One').
digit_word(2, 'Two').
digit_word(3, 'Three').
digit_word(4, 'Four').
digit_word(5, 'Five').
digit_word(6, 'Six').
digit_word(7, 'Seven').
digit_word(8, 'Eight').
digit_word(9, 'Nine').
