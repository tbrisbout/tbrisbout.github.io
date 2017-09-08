module Linters exposing (article)

import Article exposing (Article, sureDate)


article : Article
article =
    { title = "Are linters always a good thing?"
    , date = sureDate "2017-09-09"
    , tags = [ "craftmanship" ]
    , content = content
    }


content : String
content =
    """
I have spent a fair amount of time of the last couple of years
advocating for linters and put them in place in every new project.

While I am fond of code quality and consistency, and am convinced
that it is a way to ramp up development skills very quickly, the following
thoughts came across my mind after reading a comment in a Prettier PR.

This was the rough idea:

> An algorithm is actually writing the code.
> I will have done a good job if you cannot distinguish a code written
by a developer from another.

So we're not writing our own source code anymore (it's been a while that we don't write
our production code anyway...)?
So a developer should not leave any trail in a project in a form of style.
We should only think of number of changes?
I find it kind of sad...

Fortunately, there are still books like [If Hemingway wrote JavaScript](https://www.amazon.fr/Hemingway-Wrote-JavaScript-Angus-Croll/dp/1593275854/ref=sr_1_1?ie=UTF8&qid=1504909587&sr=8-1&keywords=hemingway+wrote+javascript)
to insert some prose into this coding world.
"""
