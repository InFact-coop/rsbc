module Components.Buttons exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import State exposing (..)
import Types exposing (..)


buttonMaker : String -> String -> String -> String -> Html Msg
buttonMaker buttonClass heading body linkStr =
    a
        [ class "no-underline"
        , href ("/#" ++ linkStr)
        ]
        [ div [ class ("" ++ buttonClass) ]
            [ h1 [] [ text heading ]
            , p [] [ text body ]
            ]
        ]
