# A clever `primesum` Algorithm in Haskell
## Description
This simple program takes a single argument as input: the upper bound `N` on the naturals for which to sum all primes less than or equal to. The answer to this question is the resulting output.

The program is characterized as "clever", because it uses a series of particular arithmetic progressions to calculate the sum instead of performing a sum on the whole range of primes.
This isn't more efficient in practice, and in fact has equal asymptotic time complexity to the naïve approach. Instead, its main advantage is the savings produced from only needing to work on a smaller sieve.

## Requirements
The program depends on the
[`integer-roots`](https://hackage.haskell.org/package/integer-roots)
and [`primes`](https://hackage.haskell.org/package/primes) packages.
These should be easily available.
Additionally, the current implementation is reliant on GHC for its
`GHC.Integer` module.

## Building
The recommended build tool for this project is `stack`. A simple `stack build`
from the project's root directory should suffice.

## Notes
Currently bound to ~2^3844 due to Data.Vector's `backpermute` implementation.

