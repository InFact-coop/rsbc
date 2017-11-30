module Routes.SubjectPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


subjectPage : Model -> Html Msg
subjectPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "Resources" ]
        , ul []
            (List.map
                eachResource
                [ { name = "KS1 PE lesson", rtype = "PDF Doc", subject = "PE", votes = "8" }
                , { name = "KS1 PE lesson", rtype = "PDF Doc", subject = "PE", votes = "8" }
                , { name = "KS1 PE lesson", rtype = "PDF Doc", subject = "PE", votes = "8" }
                ]
            )
        ]


eachResource : Resource -> Html Msg
eachResource resource =
    a [ class "no-underline dt w-100 ba dim b--black rsbc-red pa2 ma2 bw1", href "/#resource" ]
        [ div [ class "dtc w5 b v-mid tc" ]
            [ text resource.name ]
        , div [ class "dtc w5 b v-mid tc" ]
            [ text resource.rtype ]
        , div [ class "dtc w5 b v-mid tc" ]
            [ text resource.subject ]
        , div [ class "dtc w5 b v-mid tc" ]
            [ text resource.votes ]
        ]
