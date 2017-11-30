module Routes.AboutPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


aboutPage : Model -> Html Msg
aboutPage model =
    let
        liveContent =
            case model.liveAbout of
                AboutRsbc ->
                    [ aboutContent ]

                AboutYou ->
                    formContent
    in
        div [ class "w-60-ns center" ]
            [ div [ class "w-100 h-100 bg-pink ma5 dib" ]
                [ div []
                    [ button [ onClick <| UpdateAbout AboutRsbc ] [ text "About RSBC" ]
                    , button [ onClick <| UpdateAbout AboutYou ]
                        [ text "About You" ]
                    , Html.section []
                        liveContent
                    ]
                ]
            ]


aboutContent : Html Msg
aboutContent =
    div []
        [ h2 [] [ text "Who are we" ]
        , p [] [ text "The Royal Society for Blind Children believes in a better life for blind children.\n\nWe are on a mission to make sure every single blind child has the self-belief and skills to fulfil the potential we know they’ve got.\n\nWe are an ambitious charity; by 2020 we want to have helped 11,000 blind and partially sighted children and young people in England and Wales.\n\nIn 2015 RSBC (formerly known as the Royal Blind Society) and RLSB (now merged with RSBC) supported over 1600 participants through our services. We have an annual turnover of around £3.7 million and employ 100 people." ]
        , h2 [] [ text "This site" ]
        , p [] [ text "With this site, we hope to...." ]
        , h2 [] [ text "Your help" ]
        , p [] [ text "If you switch to the about you tab and fill out the information, it will help us a lot in reaching our goal of helping as many visulally impaired young people as possible" ]
        ]


formItem : String -> Html Msg
formItem field =
    div []
        [ label [ class "db fw4 lh-copy f6 " ] [ text field ]
        , input
            [ class "br2 pa2 mb2 input-reset ba  bg-transparent w-80 measure" ]
            []
        ]


formContent : List (Html Msg)
formContent =
    List.map formItem [ "Local Authority", "School Name", "First Name", "Last Name", "Email Address" ]
