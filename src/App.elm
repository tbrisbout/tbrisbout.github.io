module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (src, href)
import Date exposing (Date)
import Markdown
import Article exposing (Article)
import Blog
import Projects exposing (Project, projects)
import AppStyles exposing (..)


---- MODEL ----


type alias Model =
    { articles : List Article
    , projects : List Project
    }


init : ( Model, Cmd Msg )
init =
    ( { articles = Blog.articles, projects = projects }, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div bodyStyle
        [ header headerStyle
            [ h1 [] [ text "Still don't know why this works" ]
            , p subtitleStyle [ text "/^a blog about programming and other stuff$/" ]
            ]
        , div [] <| List.reverse <| List.map displayArticle model.articles
        ]


displayArticle : Article -> Html Msg
displayArticle article =
    div articleStyle
        [ span dateStyle [ displayDate article.date ]
        , h2 articleTitleStyle [ text article.title ]
        , Markdown.toHtml [] article.content
        , displayTags article.tags
        ]


displayDate : Date -> Html Msg
displayDate date =
    date
        |> toString
        |> String.words
        |> List.drop 1
        |> List.take 3
        |> List.foldr (\a b -> a ++ " " ++ b) ""
        |> text


displayTags : List String -> Html Msg
displayTags tags =
    case tags of
        [] ->
            div [] []

        _ ->
            tags
                |> List.map displayTag
                |> ul tagListStyle


displayTag : String -> Html Msg
displayTag tag =
    li tagStyle [ text tag ]


displayProject : Project -> Html Msg
displayProject project =
    li []
        [ a [ href project.url ] [ text project.name ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        }
