module Routes.SubjectSelectionPage exposing (..)

import Components.Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


subjectSelectionPage : Model -> Html Msg
subjectSelectionPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ]
            [ text "Subjects" ]
        , div [ class "inline-flex flex-wrap justify-around" ]
            [ imgButton " grow black wide-spacing dib"
                "Maths"
                ""
                "subject"
                "./assets/calculator.png"
            , imgButton "grow black wide-spacing dib"
                "Science"
                ""
                "subject"
                "./assets/scienceIcon.png"
            , imgButton " grow black wide-spacing dib" "Arts" "" "subject" "./assets/paintIcon.png"
            , imgButton " grow black wide-spacing dib" "Reading" "" "subject" "./assets/readingIcon.png"
            , imgButton " grow black wide-spacing dib" "Sport" "" "subject" "./assets/sportsIcon.png"
            , imgButton " grow black wide-spacing dib" "Homework" "" "subject" "./assets/homeworkIcon.png"
            , imgButton " grow black wide-spacing dib" "All" "" "subject" "./assets/everythingIcon.png"
            ]
        ]
