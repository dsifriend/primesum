module Main where

-- import System.Environment
import PrimeSum

main :: IO ()
main = do
    print $ primeSum 10000
--    args <- getArgs
--    let i = read (head args) :: Integer
--    print $ primeSum i
    
