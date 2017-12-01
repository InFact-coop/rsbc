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
                    aboutContent

                AboutYou ->
                    formContent
    in
    div [ class "pt5" ]
        [ div [ class "" ]
            --[ div [ class "w-100 h-100 bg-pink ma5 dib" ]
            [ div [ class "center pl4 mw8" ]
                [ button [ class tabStyle, classList [ ( "bg-rsbc-red", not <| onView AboutRsbc model ) ], onClick <| UpdateAbout AboutRsbc ] [ text "About RSBC" ]
                , button [ class tabStyle, classList [ ( "bg-rsbc-red", not <| onView AboutYou model ) ], onClick <| UpdateAbout AboutYou ]
                    [ text "About You" ]
                ]
            , Html.section [ class "ba br3 b--rsbc-red w-100 mw8 h-ta pa4 pt2 center hide-bottom" ]
                [ liveContent
                ]
            ]

        --]
        ]


tabStyle =
    "f4 pointer link dim br4 br--top ph3 pv2 pb0 mb0 dib b--rsbc-red bb-0 bg-white"


onView : AboutPage -> Model -> Bool
onView view model =
    view == model.liveAbout


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
        [ label [ class "dib fw4 w5 tr lh-copy f6 pr2" ] [ text field ]
        , input
            [ class (inputBaseClass ++ " w-80 measure ") ]
            []
        ]


formNumberItem : String -> Html Msg
formNumberItem field =
    div [ class "dib" ]
        [ label [ class "dib fw4 w3 tr lh-copy f6 ma3" ] [ text field ]
        , input
            [ class (inputBaseClass ++ " w3") ]
            []
        ]


labelClass =
    "dib fw4 w5 tr lh-copy f6 pr2"


inputBaseClass =
    "pa1 mb2 input-reset ba bt-0 br-0 bl-0 f4 bg-white b--rsbc-red"


formContent : Html Msg
formContent =
    div []
        ([ div [ class "w100 ma2 ml4 b pv1" ] [ text "Your School" ] ]
            ++ List.map
                formItem
                [ "Local Authority", "School Name" ]
            ++ [ div [ class "v-mid pv2" ]
                    [ div [ class labelClass ] [ text "Number of current VI students in:" ]
                    , div [ class "dib w-75" ] (List.map formNumberItem [ "KS1", "KS2", "KS3", "GCSE", "A-Level" ])
                    ]
               ]
            ++ [ div [ class "w100 ma2 ml4 b pv1" ] [ text "Your contact details" ] ]
            ++ List.map
                formItem
                [ "First Name", "Last Name", "Email Address" ]
            ++ [ div [ class "pa3 tl" ] [ div [ class "f5 pointer link bg-animate hover-bg-light-gray br2 ph3 pv2 ma3 ml5 dib ba b--rsbc-red" ] [ text "Submit" ] ] ]
        )
