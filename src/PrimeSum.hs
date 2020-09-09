module PrimeSum where
    
-- import Data.List
import Data.Numbers.Primes
import Math.NumberTheory.Roots

import Subsequences


-- "Triangle numbers"; argument always interpreted as =>0, unlike math function.
triangle :: Integer -> Integer
triangle n = abs n * (abs n + 1) `quot` 2

-- The sum of all positive multiples of `n` up to `m`, w/ the sign of `n`.
sumOfMultiplesTo :: Integer -> Integer -> Integer
sumOfMultiplesTo m n = n * triangle (quot m n)

-- Sum of primes up to `n`, using arithmetic progressions.
primeSum :: Integer -> Integer
primeSum n = let relevantPrimes = takeWhile (<= integerSquareRoot n) primes
              in (-1) + sum relevantPrimes
                      + sum (map (sumOfMultiplesTo n . product)
                                $ subsequences $ map negate relevantPrimes)


