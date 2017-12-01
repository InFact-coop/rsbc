module Types exposing (..)

import Navigation


-- Model


type Route
    = HomeRoute
    | SubjectSelectionRoute
    | SubjectRoute
    | EnvSelectionRoute
    | EnvRoute
    | ResourceRoute
    | MapRoute
    | AboutRoute
    | NotFoundRoute


type alias Model =
    { route : Route
    , subject : Maybe Subject
    , resource : String
    , liveAbout : AboutPage
    }


type Subject
    = Maths
    | Science
    | Arts
    | Reading
    | Technology
    | Sport
    | Homework


type AboutPage
    = AboutRsbc
    | AboutYou


type alias Resource =
    { name : String
    , rtype : String
    , votes : String
    , subject : String
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | InitMap
    | UpdateAbout AboutPage
