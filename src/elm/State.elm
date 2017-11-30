module State exposing (..)

import Types exposing (..)


-- MODEL


initModel : Model
initModel =
    { route = HomeRoute
    , subject = Nothing
    , resource = ""
    }



--UPDATE


getRoute : String -> Route
getRoute hash =
    case hash of
        "" ->
            HomeRoute

        "#home" ->
            HomeRoute

        "#subjectselection" ->
            SubjectSelectionRoute

        "#subject" ->
            SubjectRoute

        "#envselection" ->
            EnvSelectionRoute

        "#env" ->
            EnvRoute

        "#resource" ->
            ResourceRoute

        "#map" ->
            MapRoute

        "#about" ->
            AboutRoute

        _ ->
            NotFoundRoute


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            ( { model | route = getRoute location.hash }, Cmd.none )
