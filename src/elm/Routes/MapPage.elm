module Routes.MapPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


mapPage : Model -> Html Msg
mapPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "map" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "map map" ]
        ]
