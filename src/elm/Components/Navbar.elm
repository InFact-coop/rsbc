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


navbarLink : ( String, String, Bool ) -> Html Msg
navbarLink ( linkStr, name, onPage ) =
    li [ class "list dib ma3 v-top" ]
        [ a
            [ class "b--rsbc-red no-underline dim white wide-spacing pb2"
            , classList [ ( "bb", onPage ) ]
            , href ("/" ++ linkStr)
            ]
            [ text name ]
        ]


navbarContent : Model -> List (Html Msg)
navbarContent model =
    List.map navbarLink
        [ ( "#home", "home", isActivePage model "#home" )
        , ( "#subjectselection", "curriculum", isActivePage model "#subjectselection" )
        , ( "#envselection", "environment", isActivePage model "#envselection" )
        , ( "#about", "us & you", isActivePage model "#about" )
        , ( "#map", "near me", isActivePage model "#map" )
        ]


isActivePage : Model -> String -> Bool
isActivePage model linkStr =
    model.route == getRoute linkStr
