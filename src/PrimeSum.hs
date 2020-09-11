module PrimeSum where
    
-- import Data.List
import Data.Numbers.Primes

-- Sum of primes up to `n`, using arithmetic progressions.
primeSum :: Integer -> Integer
primeSum n = sum $ takeWhile (<=n) (primes :: [Integer])


