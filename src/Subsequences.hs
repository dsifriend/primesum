module Subsequences (subsequences) where
    
import Data.Maybe (fromJust)
import Data.List hiding (subsequences)
import GHC.Integer

-- Boolean bitwise AND on Integers
bitsShared :: Integer -> Integer -> Bool
bitsShared m n = 0 /= andInteger m n

-- A filter on a list with the bits in an integer as a truth function.
filterByBinary :: Integer -> [Integer] -> [Integer]
filterByBinary n xs = filter (bitsShared n . (2^) . fromJust . flip elemIndex xs) xs

-- List of all combinations of a list's element.
subsequences :: [Integer] -> [[Integer]]
subsequences xs = map (flip filterByBinary xs) [0..(2^(length xs))-1]


