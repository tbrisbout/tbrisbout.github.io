module Blog exposing (articles)

import Article exposing (Article)
import HelloWorldArticle


articles : List Article
articles =
    [ HelloWorldArticle.article ]
