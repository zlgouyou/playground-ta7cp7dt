{-# LANGUAGE CPP #-}
module Function_Anonymous_Run(add2ToAllListElement) where
import Prelude hiding (map)
import qualified Data.List (map)
import qualified TechIoMockFunction

map :: (a -> b) -> [a] -> [b]
map = TechIoMockFunction.mockFunction Data.List.map

#include "Function_Anonymous.hs"