module Routes.SubjectSelectionPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


subjectSelectionPage : Model -> Html Msg
subjectSelectionPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "subjectselection" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "electionelectionelection" ]
        ]
