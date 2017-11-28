module Routes.MapPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


mapPage : Model -> Html Msg
mapPage model =
    div [ class "w-60-ns center" ]
        [ div [ id "map" ] []
        ]
