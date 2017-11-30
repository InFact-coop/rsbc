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
        , buttonMaker "mathImage ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Maths" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Maths" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Maths" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Maths" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Maths" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Maths" "" "subject"
        , buttonMaker "ba b--rsbc-red grow black wide-spacing pa2 ma1 dib" "Maths" "" "subject"
        ]
