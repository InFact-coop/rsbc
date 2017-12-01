module Routes.EnvSelectionPage exposing (..)

import Components.Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


envSelectionPage : Model -> Html Msg
envSelectionPage model =
    div [ class "mt4 pt3 ma3 center w-60-ns tc " ]
        [ div [ class "mt4" ] []
        , div []
            [ div [ class "flex justify-center space-around" ]
                [ imgButton " ma2 ba b--black grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc" "Adapting the Environment" "" "subject" "./assets/environment.png"
                , imgButton " ma2 ba b--black grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc" "Tech Aids" "" "subject" "./assets/tech.png"
                ]
            ]
        , div []
            [ div [ class "flex justify-center space-around" ]
                [ imgButton " ma2 ba b--black grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc" "Option C" "" "subject" "./assets/optionc.png"
                , imgButton " ma2 ba b--black grow black wide-spacing pa2 ma1 w-30 vh-33 bg-white no-underline tc" "Option D" "" "subject" "./assets/optionD.png"
                ]
            ]
        ]
