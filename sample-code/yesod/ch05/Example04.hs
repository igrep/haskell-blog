#!/usr/bin/env stack
-- stack script --resolver lts-12.9
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}
import           Yesod

data App = App
mkYesod "App" [parseRoutes|
/ HomeR GET
|]

myLayout :: Widget -> Handler Html
myLayout widget = do
    pc <- widgetToPageContent $ do
        widget
        toWidget [lucius| body { font-family: verdana } |]
    withUrlRenderer
        [hamlet|
            $doctype 5
            <html>
                <head>
                    <title>#{pageTitle pc}
                    <meta charset=utf-8>
                    ^{pageHead pc}
                <body>
                    <article>
                        ^{pageBody pc}
        |]

instance Yesod App where
    defaultLayout = myLayout

getHomeR :: Handler Html
getHomeR = defaultLayout
    [whamlet|
        <p>Hello World!
    |]

main :: IO ()
main = warp 3000 App
