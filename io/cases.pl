:- module(cases, [title/1, case/3]).
:- use_module('../prolog/roundtrip').
:- use_module(engine).
title('roundtrip').
list_g(L) :- rnd_int(0, 9, N), length(L, N), maplist([X]>>rnd_pick([a, b, b, c], X), L).
codec_g(C) :- rnd_int(1, 4, I), ( I =:= 1 -> C = rle ; I =:= 2 -> C = rle_capped ; I =:= 3 -> rnd_int(2, 16, B), C = base(B) ; rnd_int(0, 25, K), C = caesar(K) ).
input_g(rle, L) :- list_g(L).
input_g(rle_capped, L) :- list_g(L).
input_g(base(_), N) :- rnd_int(0, 5000, N).
input_g(caesar(_), W) :- rnd_int(0, 6, N), length(W, N), maplist([X]>>rnd_pick([h, e, l, o, w, r, d, z], X), W).
case(encode, [C, X], encode) :- codec_g(C), input_g(C, X).
case(roundtrips, [C, X], roundtrips) :- codec_g(C), input_g(C, X).
case(check, [C, Dom], check) :- codec_g(C), rnd_int(1, 4, K), length(Dom, K), maplist(input_g(C), Dom).
