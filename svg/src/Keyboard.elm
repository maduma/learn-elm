module Main exposing (..)


import Browser
import Html exposing (Html, button, div, input, text, Attribute)
import Html.Events exposing (on, onClick, keyCode)
import Json.Decode as Json

--import Html.Attributes exposing (on)


main : Program () Model Msg
main = Browser.sandbox { init = init , update = update, view = view }

type alias Model = String

type Msg = UP | DOWN | LEFT | RIGHT | OTHER Int

init : Model
init = ""

update : Msg -> Model -> Model
update msg model =
  case msg of
    UP -> "Up"
    DOWN -> "Down"
    LEFT -> "Left"
    RIGHT -> "Right"
    OTHER n -> "Other " ++ String.fromInt n

view : Model -> Html Msg
view model = div [] [ input [ keyDirection ] [ ]
                    , div [] [ text <| "Keydown: " ++ model ]
                    ]


onKey : (Int -> msg) -> Attribute msg
onKey tagger =
  on "keydown" (Json.map tagger keyCode)

keyDirection : Attribute Msg
keyDirection =
  onKey (\n -> case n of
    37 -> LEFT 
    38 -> UP
    39 -> RIGHT
    40 -> DOWN
    _ -> OTHER n)
  
