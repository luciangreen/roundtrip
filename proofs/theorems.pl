% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/roundtrip').

% Domain: lists over a, b of length 0..6; numbers 0..200 in bases 2..10; words of length 0..3 over a, b, y, z with shifts 0..25.
lists(Ls) :- findall(L, ( between(0, 6, N), length(L, N), maplist([X]>>member(X, [a, b]), L) ), Ls).
words(Ws) :- findall(W, ( between(0, 3, N), length(W, N), maplist([X]>>member(X, [a, b, y, z]), W) ), Ws).

% 1. Run-length coding round-trips, with no collisions.
theorem(rle_roundtrips) :- lists(Ls), check(rle, Ls, []), collisions(rle, Ls, []).

% 2. Its runs are canonical: counts at least 1, neighbours different, never longer than the input.
theorem(rle_canonical) :- lists(Ls), forall(member(L, Ls), ( encode(rle, L, E), forall(member(_-N, E), N >= 1), \+ nextto(X-_, X-_, E), length(E, NE), length(L, NL), NE =< NL )).

% 3. Digits in every base 2..10 round-trip for 0..200.
theorem(base_roundtrips) :- forall(between(2, 10, B), ( numlist(0, 200, Ns), check(base(B), Ns, []), collisions(base(B), Ns, []) )).

% 4. Every Caesar shift round-trips.
theorem(caesar_roundtrips) :- words(Ws), forall(between(0, 25, K), check(caesar(K), Ws, [])).

% 5. The checker catches the buggy codec exactly on runs longer than 3.
theorem(catches_capped_bug) :- lists(Ls), check(rle_capped, Ls, Bad), forall(member(L, Ls), iff(memberchk(L, Bad), ( append(_, [X, X, X, X|_], L) ))).
