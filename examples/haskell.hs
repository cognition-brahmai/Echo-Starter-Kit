{-# LANGUAGE OverloadedStrings #-}

import Network.HTTP.Simple
import Data.Aeson
import qualified Data.ByteString.Lazy.Char8 as L8

main :: IO ()
main = do
    let request
            = setRequestMethod "POST"
            $ setRequestHeader "ECHO-API-KEY" ["your_api_key"]
            $ setRequestHeader "Content-Type" ["application/json"]
            $ setRequestBodyJSON (object [
                "text" .= ("Hello world!" :: String),
                "voice_id" .= ("af_alloy" :: String),
                "advanced_mode" .= False,
                "speed" .= (1.0 :: Double)
            ])
            $ "https://api.echo.inferx.in/v1/speech/generate"
    response <- httpLBS request
    L8.putStrLn $ getResponseBody response