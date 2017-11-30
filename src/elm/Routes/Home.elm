module Routes.Home exposing (..)

import Components.Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ]
            [ text "home" ]
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Curriculum" "what's in the curriculum" "subjectselection"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Environment" "what's in the environment" "envselection"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Us & You" "what about us" "about"
        ]
