module View exposing (..)

-- My Elm Files

import Components.Navbar exposing (..)
import Html exposing (..)
import Routes.AboutPage exposing (..)
import Routes.EnvPage exposing (..)
import Routes.EnvSelectionPage exposing (..)
import Routes.Home exposing (..)
import Routes.MapPage exposing (..)
import Routes.NotFoundPage exposing (..)
import Routes.ResourcePage exposing (..)
import Routes.SubjectPage exposing (..)
import Routes.SubjectSelectionPage exposing (..)
import Types exposing (..)


view : Model -> Html Msg
view model =
    let
        page =
            case model.route of
                HomeRoute ->
                    home model

                SubjectSelectionRoute ->
                    subjectSelectionPage model

                SubjectRoute ->
                    subjectPage model

                EnvSelectionRoute ->
                    envSelectionPage model

                EnvRoute ->
                    envPage model

                ResourceRoute ->
                    resourcePage model

                MapRoute ->
                    mapPage model

                AboutRoute ->
                    aboutPage model

                NotFoundRoute ->
                    notFoundPage model
    in
        div []
            [ navbar model
            , page
            ]
