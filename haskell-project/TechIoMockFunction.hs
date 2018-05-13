module TechIoMockFunction(mockFunction, isFunctionUsed) where
import qualified TechIoMockFunctionMap as Mock

defaultFunctionName :: String
defaultFunctionName = "default"

mockFunction :: a -> a
mockFunction = Mock.mockFunction defaultFunctionName

isFunctionUsed :: IO Bool
isFunctionUsed = Mock.isFunctionUsed defaultFunctionName


