module Routes.EnvSelectionPage exposing (..)

import Components.Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


envSelectionPage : Model -> Html Msg
envSelectionPage model =
    div [ class "pt3 center w-60-ns tc" ]
        [ h1 [ class "tc f1" ] [ text "" ]
        , imgButton "grow black wide-spacing pa2 ma1 dib" "Adapting the Environment" "" "subject" "./assets/calculator.png"
        , imgButton "grow black wide-spacing pa2 ma1 dib" "Tech Aids" "" "subject" "./assets/calculator.png"
        ]
