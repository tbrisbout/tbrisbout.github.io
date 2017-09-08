module ReactSkeuomorphism exposing (article)

import Article exposing (Article, sureDate)


article : Article
article =
    { title = "React without skeuomorphism"
    , date = sureDate "2017-06-26"
    , tags = [ "react", "elm" ]
    , content = content
    }


content : String
content =
    """
Writing in progress

### Main ideas:
- View as a function of state is a great idea
- Thinking in component is good
- JSX is skeuomorphism for web developers
- We can avoid it with little known libs (`hyperscript` & `hyperscript-helpers`)


```javascript
import h from 'react-hyperscript'
import React from 'react'
import helpers from 'hyperscript-helpers'
const { div, span, h1 } = helpers(h)

const fruits = [ 'apple', 'banana', 'strawberry' ]

const MyComponent = (props) =>
  ul('#fruits', fruits.map(fruit =>
    li(fruit))
  )
```
"""
