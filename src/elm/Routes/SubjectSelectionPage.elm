module Routes.SubjectSelectionPage exposing (..)

import Components.Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


subjectSelectionPage : Model -> Html Msg
subjectSelectionPage model =
    div [ class "tc pt4 w-75 center" ]
        [ div
            [ class "pt4 inline-flex flex-wrap justify-between" ]
            [ imgButton "shadow-3 grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc ma2"
                "Maths"
                ""
                "subject"
                "./assets/calculator.png"
            , imgButton "shadow-3 grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc ma2"
                "Science"
                ""
                "subject"
                "./assets/scienceIcon.png"
            , imgButton "shadow-3 grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc ma2" "Arts" "" "subject" "./assets/paintIcon.png"
            , imgButton "  shadow-3 grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc ma2" "Reading" "" "subject" "./assets/readingIcon.png"
            , imgButton " shadow-3 grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc ma2" "Sport" "" "subject" "./assets/sportsIcon.png"
            , imgButton "  shadow-3 grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc ma2" "Homework" "" "subject" "./assets/homeworkIcon.png"
            ]
        ]
