module Routes.Home exposing (..)

import Components.Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-75-ns center" ]
        [ h1 [ class "tc pa0 ma0 f2 pt4" ]
            [ text "RSBC SENDCO Resources" ]
        , p [ class "w-75 tc center f4 ma4 mb5 pa1" ] [ text "A platform for SENDCO's across the country to find resources and share them with visually impaired students and their families" ]
        , div
            [ class "inline-flex justify-between w-100 mv3 pa1" ]
            [ buttonMaker buttonClass "Curriculum" "Find resources to help with particular curriculum subjects" "subjectselection"
            , buttonMaker buttonClass "Environment" "Resources to help with what you need to do on the arrival of a new VI student" "envselection"
            , buttonMaker buttonClass "Us & You" "What RSBC can do for you and what you can do for us" "about"
            ]
        ]


buttonClass =
    "ba b--black grow black pa2 ma1 w-30 vh-33 bg-white no-underline tc"
