module TechIO.Helper(success, failure, sendMsg, sendMsgs, Result (Failure, Success), AssertFailed(AssertFailed), runner, simpleRunner, simpleTest, assertHandler) where

import Control.Monad
import Control.Exception
import Data.IORef

success :: IO ()
success = putStrLn "TECHIO> success true"

failure :: IO ()
failure = putStrLn "TECHIO> success false"


outputMessageFormat :: String -> String -> String
outputMessageFormat chan msg = "TECHIO> message --channel \"" ++ chan ++ "\" \"" ++ msg ++ "\""

sendMsg :: String -> String -> IO ()
sendMsg chan msg =
  putStrLn $ outputMessageFormat chan msg

sendMsgs :: String -> [String] -> IO ()
sendMsgs chan msgs =
  mapM_  (sendMsg chan) msgs

data Result = Failure | Success

data AssertFailed = AssertFailed String deriving Show
instance Exception AssertFailed

assertHandler :: AssertFailed -> IO Result
assertHandler (AssertFailed e) = do
  sendMsg "Oops! 🐞" e
  return Failure

runner :: IO a -> IO Result
runner tests = handle assertHandler $ do
            result <- simpleRunner tests
            case result of
              Success -> do
                success
                return Success
              Failure -> do
                failure
                return Failure

simpleRunner :: IO a -> IO Result
simpleRunner tests = handle assertHandler $ do
            tests
            return Success

simpleTest :: (Eq a, Show a) => a -> a -> IO ()
simpleTest result expected = do
  unless (result == expected) $ do
    throw $ AssertFailed $ " Attendue \"" ++ show expected ++ "\", obtenue \"" ++ show result ++ "\""