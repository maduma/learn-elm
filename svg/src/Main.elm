module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (style)
import Svg exposing (..)
import Svg.Attributes exposing (..)

main : Html msg
main =
  div [ Html.Attributes.style "border" "10"
      , Html.Attributes.style "display" "table"
      ]
    [
      svg
      [ width "600"
      , height "600"
      , viewBox "0 0 600 600"
      ]
      [ circle
        [ cx "300"
        , cy "300"
        , r "50"
        ]
         []
      ]
    ]