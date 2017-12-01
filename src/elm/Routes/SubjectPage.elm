module Routes.SubjectPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


subjectPage : Model -> Html Msg
subjectPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f3 pb3 bb b--rsbc-red" ] [ text "Resources" ]
        , ul []
            (List.map
                eachResource
                [ { name = "Guide for PE Unit 3", rtype = "PDF Doc", subject = "PE", votes = "10" }
                , { name = "Video for PE in General", rtype = "Video", subject = "PE", votes = "8" }
                , { name = "Guide for PE Unit 2", rtype = "PDF Doc", subject = "PE", votes = "5" }
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
