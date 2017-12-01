module Routes.Home exposing (..)

import Components.Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-75-ns center" ]
        [ h1 [ class "tc pa0 ma0 f1" ]
            [ text "RSBC SENDCO Resources" ]
        , p [ class "w-75 tc center f3 ma4 mb5 pa1" ] [ text "A platform for SENDCO's across the country to find resources and share them with visually impaired students and their families" ]
        , div
            [ class "inline-flex justify-between w-100 mv3" ]
            [ buttonMaker buttonClass "Curriculum" "what's in the curriculum" "subjectselection"
            , buttonMaker buttonClass "Environment" "what's in the environment" "envselection"
            , buttonMaker buttonClass "Us & You" "what about us" "about"
            ]
        ]


buttonClass =
    "ba b--black grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc"
