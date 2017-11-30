module Routes.EnvPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


envPage : Model -> Html Msg
envPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "envPage" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "Welcome to Page Two" ]
        ]
