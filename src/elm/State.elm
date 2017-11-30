port module State exposing (..)

import Types exposing (..)


-- imports for delay func

import Process
import Time
import Task exposing (Task)


-- MODEL


initModel : Model
initModel =
    { route = HomeRoute
    , subject = Nothing
    , resource = ""
    }



--UPDATE


getRoute : String -> ( Route, Cmd Msg )
getRoute hash =
    case hash of
        "#home" ->
            ( HomeRoute, Cmd.none )

        "#subjectselection" ->
            ( SubjectSelectionRoute, Cmd.none )

        "#subject" ->
            ( SubjectRoute, Cmd.none )

        "#resource" ->
            ( ResourceRoute, Cmd.none )

        "#map" ->
            ( MapRoute, delay 200 InitMap )

        "#about" ->
            ( AboutRoute, Cmd.none )

        _ ->
            ( NotFoundRoute, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            let
                ( newRoute, newCmd ) =
                    getRoute location.hash

                x =
                    Debug.log "newRoute" newRoute

                y =
                    Debug.log "newCmd" newCmd
            in
                ( { model | route = newRoute }, newCmd )

        InitMap ->
            ( model, Debug.log "delay call" initMap () )


port initMap : () -> Cmd msg


delay : Float -> Msg -> Cmd Msg
delay ms msg =
    Process.sleep (Time.millisecond * ms)
        |> Task.andThen (always (Task.succeed msg))
        |> Task.perform identity
