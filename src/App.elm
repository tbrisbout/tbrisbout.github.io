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
        [ h1 [ centered ] [ text "Still don't know why this works" ]
        , p [ centered ] [ text "/^a blog about code and other stuffs$/" ]
        , sectionTitle "Articles"
        , div [] <| List.map displayArticle model.articles
        , sectionTitle "Projects"
        , text "Hera are a few side projects I have been working on"
        , ul [] <| List.map displayProject model.projects
        ]


sectionTitle : String -> Html Msg
sectionTitle title =
    h3 sectionTitleStyle [ text title ]


displayArticle : Article -> Html Msg
displayArticle article =
    div []
        [ span dateStyle [ displayDate article.date ]
        , h2 articleTitleStyle [ text article.title ]
        , Markdown.toHtml [] article.content
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


displayProject : Project -> Html Msg
displayProject project =
    li []
        [ a (projectLinkStyle ++ [ href project.url ]) [ text project.name ]
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
