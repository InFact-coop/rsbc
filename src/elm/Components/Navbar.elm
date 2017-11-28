module Components.Navbar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


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


navbarLink : ( String, String, Route, Model ) -> Html Msg
navbarLink ( linkStr, name, route, model ) =
    li [ class "list dib ma3 v-top" ]
        [ a
            [ classList
                [ ( "link", True )
                , ( "dim", True )
                , ( "white", True )
                , ( "b", True )
                , ( "underline", isActivePage route model )
                ]
            , href ("/#" ++ linkStr)
            ]
            [ text name ]
        ]


navbarContent : Model -> List (Html Msg)
navbarContent model =
    List.map navbarLink
        [ ( "home", "Home", HomeRoute, model )
        , ( "subjectselection", "subjectselection", SubjectSelectionRoute, model )
        , ( "map", "map", MapRoute, model )
        , ( "about", "about", AboutRoute, model )
        ]


isActivePage : Route -> Model -> Bool
isActivePage route model =
    model.route == route
