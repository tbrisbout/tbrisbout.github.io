module AppStyles exposing (..)

import Html
import Html.Attributes
import Css exposing (..)


styles =
    Css.asPairs >> Html.Attributes.style



-- COLORS
-- http://www.colourlovers.com/palette/4509447/fidelity.


white : Color
white =
    hex "ffffff"


dateColor : Color
dateColor =
    hex "9eabb3"


linkColor : Color
linkColor =
    hex "164659"


lightBlue : Color
lightBlue =
    hex "72adc8"



-- COMPOUND STYLES


bodyStyle =
    [ styles
        [ maxWidth (px 740)
        , margin2 zero auto
        ]
    ]


sectionTitleStyle : List (Html.Attribute a)
sectionTitleStyle =
    (styles
        [ color white
        , backgroundColor lightBlue
        , padding (px 5)
        , margin2 (px 40) zero
        ]
    )
        :: centered
        :: []


dateStyle : List (Html.Attribute a)
dateStyle =
    [ styles
        [ color dateColor
        , fontSize (em 0.75)
        ]
    ]


articleTitleStyle : List (Html.Attribute a)
articleTitleStyle =
    [ styles
        [ property "-webkit-margin-before" "0"
        ]
    ]


projectLinkStyle : List (Html.Attribute a)
projectLinkStyle =
    [ styles
        [ textDecoration none
        , color linkColor
        ]
    ]



-- BASIC STYLES


centered : Html.Attribute a
centered =
    styles
        [ textAlign center
        ]


bordered : Html.Attribute a
bordered =
    styles
        [ border3 (px 1) solid lightBlue ]
