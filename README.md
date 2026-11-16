# roundtrip

check that encoders and decoders undo each other. Each codec has encode/3 and decode/3; check/3 lists the inputs whose round trip does not give them back, and collisions/3 lists distinct inputs with the same encoding. Codecs: rle (run-length), base(B) (digits), caesar(K) (letter shift) and rle_capped, a deliberately buggy run-length codec that caps runs at 3, which the checker catches.

## Use

```prolog
?- use_module(prolog/roundtrip).
?- encode(rle, [a, a, b], E).                     % E = [a-2, b-1]
?- check(rle_capped, [[a, a, a, a], [b]], C).      % C = [[a, a, a, a]]
?- encode(base(2), 6, D), decode(base(2), D, N).   % D = [1, 1, 0], N = 6
```

## Proofs

`proofs/theorems.pl` proves 5 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. lists over a, b of length 0..6; numbers 0..200 in bases 2..10; words of length 0..3 over a, b, y, z with shifts 0..25.

1. Run-length coding round-trips, with no collisions.
2. Its runs are canonical: counts at least 1, neighbours different, never longer than the input.
3. Digits in every base 2..10 round-trip for 0..200.
4. Every Caesar shift round-trips.
5. The checker catches the buggy codec exactly on runs longer than 3.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
