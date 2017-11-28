module Routes.SubjectPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


subjectPage : Model -> Html Msg
subjectPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "subjectPage" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "Welcome to Page Two" ]
        ]
