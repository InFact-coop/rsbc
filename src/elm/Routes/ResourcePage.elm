module Routes.ResourcePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


resourcePage : Model -> Html Msg
resourcePage model =
    div [ class "pa3 w-75-ns center" ]
        [ h1 [ class "tc f3 pb3 bb b--rsbc-red" ] [ text "Physical Education and Sport for Visually Impaired\nChildren and Young People Unit 3" ]
        , div [ class "dib w-75" ]
            [ embed [ class "w-100 vh-100", src "examples.pdf" ] []
            ]
        , div [ class "dib w-25 v-top" ]
            [ div [ class "center pa2 pointer ma1 button grow v-top w3" ]
                [ img [ class "", src "assets/thumb.png" ] [] ]
            , div [ class "center f6 ma1 tc pa1 b" ] [ text "Give this resource an upvote so other SENDCO's will see it" ]
            , div [ class "center pa2 pointer ma1 button grow w3" ]
                [ img [ class "", src "assets/share.png" ] [] ]
            , div [ class "center f6 ma1 tc pa1 mt3 b" ] [ text "Share this resource" ]
            ]
        ]
