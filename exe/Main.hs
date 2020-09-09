module Main where

import System.Environment
import PrimeSum

main :: IO ()
main = do
   args <- getArgs
   let i = read (head args) :: Integer
   print $ primeSum i
    
