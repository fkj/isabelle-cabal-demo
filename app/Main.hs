{-# OPTIONS_GHC -fno-warn-orphans #-}

module Main where

import Sort ( sort_list )
import Orderings

instance Orderings.Ord Integer where {
  less_eq = (<=);
  less = (<)
}

instance Preorder Integer
instance Order Integer
instance Linorder Integer

main :: IO ()
main = do
  let list = [1 :: Integer, 5, 6, 2, 1, 8, 3]
  putStrLn "Here is a list:"
  putStrLn $ show list
  let sortedList = sort_list list
  putStrLn "Here is the same list, but sorted:"
  putStrLn $ show sortedList
