{-# LANGUAGE CPP #-}
module Function_Use_Simple_Run(addUse) where
add :: Num a => a -> a -> a
add a b = a + b

#include "Function_Use_Simple.hs"