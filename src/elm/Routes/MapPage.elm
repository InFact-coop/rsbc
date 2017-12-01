module Routes.MapPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


mapPage : Model -> Html Msg
mapPage model =
    div [ class "mt5 w-80-ns center" ]
        [ div [ class "bg-white pa3 ba mt2" ]
            [ div [ class "tc f4 b mb3" ] [ text "See local events that might be of interest to you or your VI students" ]
            , div [ id "map", class "dib w-60-ns" ]
                []
            , div [ class "center dib w-40 v-top" ] [ ul [ class "list" ] mapListContent ]
            ]
        ]


mapListItem : ( String, String ) -> Html Msg
mapListItem ( title, description ) =
    li [ class "bb b--rsbc-red pa3 ma2" ]
        [ h2 [ class "f4" ] [ text title ], p [] [ text description ] ]


mapListContent : List (Html Msg)
mapListContent =
    List.map mapListItem
        [ ( "A - RSBC Local", "Lorem Ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum" )
        , ( "B - RNIB Event", "Lorem Ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum" )
        , ( "C - RSBC Event", "Lorem Ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum" )
        ]
