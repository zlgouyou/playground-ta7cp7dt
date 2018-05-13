{-# LANGUAGE CPP #-}
module Function_Composition_Run(foo) where
import qualified TechIoMockFunction as Mock
import Prelude hiding ((.))
import qualified GHC.Base ((.))

(.) :: (b -> c) -> (a -> b) -> a -> c
(.) = Mock.mockFunction (GHC.Base..)

#include "Function_Composition.hs"