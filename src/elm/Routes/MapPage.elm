module Routes.MapPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


mapPage : Model -> Html Msg
mapPage model =
    div [ class "w-80-ns center" ]
        [ div [ class "bg-white pa3 ba mt2" ]
            [ div [ id "map", class "dib w-60-ns" ]
                []
            , div [ class "center dib w-40 v-top" ] [ ul [ class "list" ] mapListContent ]
            ]
        ]


mapListItem : ( String, String ) -> Html Msg
mapListItem ( title, description ) =
    li [ class "mapListItem pa3 ma2" ]
        [ h2 [ class "f4" ] [ text title ], p [] [ text description ] ]


mapListContent : List (Html Msg)
mapListContent =
    List.map mapListItem
        [ ( "Place1", "description1" )
        , ( "Place2", "description2" )
        , ( "Place3", "description3" )
        ]
