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
                ++ [ div [] navbarContent ]


navbarLink : ( String, String ) -> Html Msg
navbarLink ( linkStr, name ) =
    li [ class "list dib ma3 v-top" ] [ a [ class "link dim white b", href ("/#" ++ linkStr) ] [ text name ] ]


navbarContent : List (Html Msg)
navbarContent =
    List.map navbarLink [ ( "home", "Home" ), ( "subjectselection", "subjectselection" ), ( "map", "map" ), ( "about", "about" ) ]
