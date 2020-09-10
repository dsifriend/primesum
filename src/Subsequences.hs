module Subsequences (subsequences) where

import qualified Data.Vector                  as V
import           GHC.Integer
import           Math.NumberTheory.Logarithms

-- The n-th combination of a Vector of Integers
combination :: Integer -> V.Vector Integer -> V.Vector Integer
combination n xs =
    V.backpermute xs $ (integerLog2 <$>) . V.filter (0 /=)
               $ andInteger n . (2 ^) <$> V.fromList [0..V.length xs - 1]

-- List of all combinations of a Vector's elements.
subsequences :: V.Vector Integer -> V.Vector (V.Vector Integer)
subsequences xs = (`combination` xs) <$> V.fromList [0..2^V.length xs - 1]


