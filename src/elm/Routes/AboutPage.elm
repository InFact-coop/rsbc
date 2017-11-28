module Routes.AboutPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


aboutPage : Model -> Html Msg
aboutPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "about" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "bla" ]
        , input [ class "f3 w30 pa1 center db ba tc", placeholder "I update state, yo" ] []
        ]
