module HelloWorldArticle exposing (article)

import Article exposing (Article, sureDate)


article : Article
article =
    { title = "Hello World"
    , date = sureDate "2017-06-25"
    , content = content
    , tags = [ "personal development", "meta" ]
    }


content : String
content =
    """
This is yet another attempt at blogging something !

It is incomplete and ugly, and I am not satisfied with it in this current state !

So why am I sharing it now ?

You may find a few pointers in this [book](https://www.amazon.fr/How-Be-Imperfectionist-Self-Acceptance-Perfectionism-ebook/dp/B00UMG535Y/) that I read a while ago.

I will mostly published short ideas instead of long blog for now.

I will take inspiration from these blogs:
- [Daniel Miessler](https://danielmiessler.com/blog/)
- [Julia Evans](http://jvns.ca)
"""
