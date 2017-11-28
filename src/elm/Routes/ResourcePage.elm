module Routes.ResourcePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


resourcePage : Model -> Html Msg
resourcePage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "resource" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "Welcome to Page Two" ]
        ]
