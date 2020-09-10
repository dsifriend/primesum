module PrimeSum where

import           Data.Numbers.Primes
import qualified Data.Vector             as V
import           Math.NumberTheory.Roots
import           Subsequences


-- "Triangle numbers"; argument always interpreted as =>0, unlike math function.
triangle :: Integer -> Integer
triangle n = abs n * (abs n + 1) `quot` 2

-- The sum of all positive multiples of `n` up to `m`, w/ the sign of `n`.
sumOfMultiplesTo :: Integer -> Integer -> Integer
sumOfMultiplesTo m n = n * triangle (quot m n)

-- Sum of primes up to `n`, using arithmetic progressions.
primeSum :: Integer -> Integer
primeSum n = let relevantPrimes =
                     V.fromList (takeWhile (<= integerSquareRoot n) primes)
              in (-1) + V.sum relevantPrimes
                      + V.sum ((sumOfMultiplesTo n . V.product)
                                <$> subsequences (negate <$> relevantPrimes))


