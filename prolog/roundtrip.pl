% roundtrip: check that encoders and decoders undo each other. Each codec has encode/3 and
% decode/3; check/3 lists the inputs whose round trip does not give them back, and collisions/3
% lists distinct inputs with the same encoding. Codecs: rle (run-length), base(B) (digits),
% caesar(K) (letter shift) and rle_capped, a deliberately buggy run-length codec that caps runs
% at 3, which the checker catches.
%?- encode(rle, [a, a, b], E).                     % E = [a-2, b-1]
%?- check(rle_capped, [[a, a, a, a], [b]], C).      % C = [[a, a, a, a]]
%?- encode(base(2), 6, D), decode(base(2), D, N).   % D = [1, 1, 0], N = 6
:- module(roundtrip, [encode/3, decode/3, check/3, collisions/3, roundtrips/2]).
:- use_module(library(lists)).
:- use_module(library(apply)).

encode(rle, L, E) :- rle(L, 1000000, E).
encode(rle_capped, L, E) :- rle(L, 3, E).
encode(base(B), N, Ds) :- integer(N), N >= 0, digits(N, B, [], Ds).
encode(caesar(K), Ws, Es) :- maplist(shift(K), Ws, Es).

decode(rle, E, L) :- unrle(E, L).
decode(rle_capped, E, L) :- unrle(E, L).
decode(base(B), Ds, N) :- foldl([D, A0, A]>>( A is A0 * B + D ), Ds, 0, N).
decode(caesar(K), Es, Ws) :- K2 is (26 - K mod 26) mod 26, maplist(shift(K2), Es, Ws).

rle([], _, []).
rle([X|Xs], Cap, [X-N|R]) :- run(X, Xs, 1, N0, Rest), N is min(N0, Cap), rle(Rest, Cap, R).
run(X, [Y|Ys], N0, N, Rest) :- X == Y, !, N1 is N0 + 1, run(X, Ys, N1, N, Rest).
run(_, Rest, N, N, Rest).
unrle([], []).
unrle([X-N|R], L) :- length(P, N), maplist(=(X), P), unrle(R, L1), append(P, L1, L).

digits(N, B, Acc, Ds) :- D is N mod B, Q is N // B, ( Q =:= 0 -> Ds = [D|Acc] ; digits(Q, B, [D|Acc], Ds) ).

shift(K, C, S) :- char_code(C, X), X2 is (X - 0'a + K) mod 26 + 0'a, char_code(S, X2).

roundtrips(Codec, X) :- encode(Codec, X, E), decode(Codec, E, Y), Y == X.
check(Codec, Dom, Bad) :- exclude(roundtrips(Codec), Dom, Bad).
collisions(Codec, Dom, Cs) :- findall(X-Y, ( member(X, Dom), member(Y, Dom), X @< Y, encode(Codec, X, E), encode(Codec, Y, E) ), Cs).
