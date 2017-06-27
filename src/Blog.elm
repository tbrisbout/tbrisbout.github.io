module Blog exposing (articles)

import Article exposing (Article)
import HelloWorldArticle
import ReactFromElmArticle
import JsLearningPath


articles : List Article
articles =
    [ HelloWorldArticle.article
    , ReactFromElmArticle.article
    , JsLearningPath.article
    ]
