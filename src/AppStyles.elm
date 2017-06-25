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


darkBlue : Color
darkBlue =
    hex "164659"


mediumBlue : Color
mediumBlue =
    hex "285d74"


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
        , color darkBlue
        ]
    ]


tagListStyle : List (Html.Attribute a)
tagListStyle =
    [ styles
        [ padding zero
        , marginTop (px 30)
        ]
    ]


tagStyle : List (Html.Attribute a)
tagStyle =
    [ styles
        [ display inlineBlock
        , borderRadius (px 15)
        , fontSize (px 15)
        , backgroundColor mediumBlue
        , padding2 (px 5) (px 15)
        , marginRight (px 5)
        , color white
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
