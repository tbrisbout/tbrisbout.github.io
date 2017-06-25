module HelloWorldArticle exposing (article)

import Article exposing (Article, sureDate)


article : Article
article =
    { title = "Hello World"
    , date = sureDate "2017-06-25"
    , content = content
    }


content : String
content =
    """
This is yet another attempt at blogging something !

It is incomplete and ugly, and I am not satisfied with it in this current state !

So why am I sharing it now ?

You may find a few pointers in this [book](https://www.amazon.fr/How-Be-Imperfectionist-Self-Acceptance-Perfectionism-ebook/dp/B00UMG535Y/)
"""