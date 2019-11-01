module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    Int


init : Model
init =
    0


type Msg
    = Inc
    | Dec


update : Msg -> Model -> Model
update msg model =
    case msg of
        Inc ->
            model + 1

        Dec ->
            model - 1


view : Model -> Html.Html Msg
view model =
    div []
        [ button [ onClick Inc ] [ text "+" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Dec ] [ text "-" ]
        ]
