module Routes.ResourcePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


resourcePage : Model -> Html Msg
resourcePage model =
    div [ class "pa3 w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "Key Stage 1 PE lesson" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "This course is designed for those who teach, coach or aspire to work with visually impaired children and young people in physical activity. \n\nThe aims of this course are to:\nDevelop an awareness and understanding of what visually impaired children can do in PE and sport\nDevelop a knowledge of the range of visual impairment and what this enables children and young people to do\nDevelop a deep practical understanding of inclusion and how it applies specifically to visually impaired children and young people\nEnable those attending to devise PE curriculum and sports programmes that meet national requirements and guidelines for all children and young people\nEnable teachers and coaches to select and use appropriate pedagogical approaches\nDevelop the ability to us assessment to help children and young people to make progress\n" ]
        , div [ class "dib pa2 pointer ma1 button grow" ] [ text "vote" ]
        , div [ class "dib pa2 pointer ma1 button grow" ] [ text "share" ]
        , div [ class "dib pa2 pointer ma1 button grow" ] [ text "print" ]
        ]
