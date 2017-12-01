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


imgButton : String -> String -> String -> String -> String -> Html Msg
imgButton buttonClass heading body linkStr imgSrc =
    a
        [ class buttonClass
        , href ("/#" ++ linkStr)
        ]
        [ div [ class ("justify-center no-repeat flex items-end ma3 bg-center contain"), style [ ( "background-image", "url(" ++ imgSrc ++ ")" ), ( "height", "10rem" ) ] ] []
        , div []
            [ h1 [ class "tc f4" ] [ text heading ]
            ]
        ]
