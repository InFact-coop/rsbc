module Components.Buttons exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import State exposing (..)
import Types exposing (..)


buttonMaker : String -> String -> String -> String -> Html Msg
buttonMaker buttonClass heading body linkStr =
    a
        [ class buttonClass
        , href ("/#" ++ linkStr)
        ]
        [ h1 [ class "f4 bb b--rsbc-red pa2  dib" ] [ text heading ]
        , p [] [ text body ]
        ]
