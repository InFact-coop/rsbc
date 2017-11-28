module View exposing (..)

import Html exposing (..)


-- My Elm Files

import Types exposing (..)
import Routes.Home exposing (..)
import Routes.SubjectSelectionPage exposing (..)
import Routes.SubjectPage exposing (..)
import Routes.MapPage exposing (..)
import Routes.ResourcePage exposing (..)
import Routes.MapPage exposing (..)
import Routes.AboutPage exposing (..)
import Routes.NotFoundPage exposing (..)
import Components.Navbar exposing (..)


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
