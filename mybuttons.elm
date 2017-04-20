import Html exposing (Html, input, button, div, text)
import Html.Events exposing (onInput)
import Html.Attributes exposing (..)
import String

main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model = Int

model : Model
model =
  1


-- UPDATE

type Msg
  =  Change String


update : Msg -> Model -> Model
update msg _ = case msg of
    Change theString -> Result.withDefault 1 (String.toInt theString) * 1000

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [
    input [ placeholder "give number", onInput Change ] []
    , div [] [ text (toString model) ]
    ]