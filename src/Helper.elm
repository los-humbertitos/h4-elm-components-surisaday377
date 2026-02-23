module Helper exposing (..)

import Char
import Html exposing (Html, a, div, h1, h2, h3, h4, h5, h6, text)
import Html.Attributes exposing (href)



-- 1️⃣ joinWords


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2



-- 2️⃣ isUpperChars


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list



-- 3️⃣ evalChars (función generalizada)


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list



-- 4️⃣ headers component


headers : String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]



-- 5️⃣ hyperlink component


hyperlink : String -> String -> Html msg
hyperlink url label =
    a [ href url ] [ text label ]
