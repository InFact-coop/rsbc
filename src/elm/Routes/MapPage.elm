module Routes.MapPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


mapPage : Model -> Html Msg
mapPage model =
    div [ class "w-80-ns center" ]
        [ div [ class "bg-blue pa3 ba" ]
            [ div [ id "map", class "dib w-60-ns mr5" ]
                []
            , ul [ class "bg-green w-30-ns dib v-top ma0" ] mapListContent
            ]
        ]


mapListItem : ( String, String ) -> Html Msg
mapListItem ( title, description ) =
    li [ class "bg-pink" ]
        [ h2 [] [ text title ], p [] [ text description ] ]


mapListContent : List (Html Msg)
mapListContent =
    List.map mapListItem
        [ ( "Title1", "description1" )
        , ( "Title2", "description2" )
        , ( "Title3", "description3" )
        ]
