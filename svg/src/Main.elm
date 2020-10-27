module Main exposing (main)

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)

main : Html msg
main =
  svg
  [ width "600", height "600", viewBox "0 0 600 600" ]
  [ circle [ cx "300", cy "300", r "50" ] [] ]