module Main exposing (main)

import Browser exposing (Document)
import Element exposing (..)


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , subscriptions = \_ -> Sub.none
        , update = update
        , view = view
        }


type alias Model =
    {}


type Msg =
    NoOp


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Document Msg
view model =
    { title = "My App"
    , body =
        [ layout
            []
            (viewBody model)
        ]
    }


viewBody : Model -> Element Msg
viewBody model =
    text "Hello, My App!"