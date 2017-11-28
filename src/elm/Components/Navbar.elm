module Components.Navbar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)
import State exposing (getRoute)


navbar : Model -> Html Msg
navbar model =
    let
        navImg =
            [ img [ src "./assets/rsbc_logo.png", class "h3" ] []
            ]
    in
        ul [ class "dib ma0 navbar w-100 pa2 flex justify-between" ] <|
            navImg
                ++ [ div [] <| navbarContent model ]


navbarLink : ( String, String, Route ) -> Html Msg
navbarLink ( linkStr, name, currentRoute ) =
    li [ class "list dib ma3 v-top" ]
        [ a
            [ classList
                [ ( "link", True )
                , ( "dim", True )
                , ( "white", True )
                , ( "b", True )
                , ( "underline", isActivePage currentRoute <| getRoute linkStr )
                ]
            , href ("/" ++ linkStr)
            ]
            [ text name ]
        ]


navbarContent : Model -> List (Html Msg)
navbarContent model =
    List.map navbarLink
        [ ( "#home", "Home", model.route )
        , ( "#subjectselection", "Subject selection", model.route )
        , ( "#map", "Map", model.route )
        , ( "#about", "About", model.route )
        ]


isActivePage : Route -> Route -> Bool
isActivePage currentRoute linkRoute =
    currentRoute == linkRoute
