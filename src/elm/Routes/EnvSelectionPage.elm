module Routes.EnvSelectionPage exposing (..)

import Components.Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


envSelectionPage : Model -> Html Msg
envSelectionPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "" ]
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Adapting the Environment" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "The Law" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Tech Aids" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Tell your teachers" "" "subject"
        ]
