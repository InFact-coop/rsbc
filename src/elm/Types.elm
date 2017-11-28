module Types exposing (..)

import Navigation


-- Model


type Route
    = HomeRoute
    | SubjectSelectionRoute
    | SubjectRoute
    | ResourceRoute
    | MapRoute
    | AboutRoute
    | NotFoundRoute


type alias Model =
    { route : Route
    , subject : Maybe Subject
    , resource : String
    }


type Subject
    = Maths
    | Science
    | Arts
    | Reading
    | Technology
    | Sport
    | Homework



-- Update


type Msg
    = UrlChange Navigation.Location
