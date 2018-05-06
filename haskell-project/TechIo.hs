--module TechIoUtils(success, failure, sendMsg, assertHandler, Message, AssertFailed) where
module TechIo(success, failure, sendMsg, sendMsgs, Result (Failure, Success), AssertFailed(AssertFailed), runner, simpleTest) where

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

assertHandler (AssertFailed e) = do
  TechIo.failure
  TechIo.sendMsg "Oops! 🐞" e
  return Failure

runner tests = handle assertHandler $ do
            tests
            TechIo.success
            return Success

simpleTest :: (Eq a, Show a) => a -> a -> IO ()
simpleTest result expected = do
  unless (result == expected) $ do
    throw $ TechIo.AssertFailed $ " Attendue " ++ show result ++ ", obtenue " ++ show expected