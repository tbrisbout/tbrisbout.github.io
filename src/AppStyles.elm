module AppStyles exposing (..)

import Html
import Html.Attributes
import Css exposing (..)


styles : List Style -> Html.Attribute msg
styles =
    Css.asPairs >> Html.Attributes.style



-- COLORS
-- http://www.colourlovers.com/palette/4509447/fidelity.


white : Color
white =
    hex "ffffff"


darkGrey : Color
darkGrey =
    hex "a9a9a9"


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


headerStyle : StyleSpec msg
headerStyle =
    (styles
        [ marginBottom (px 100) ]
    )
        :: centered
        :: []


subtitleStyle : StyleSpec msg
subtitleStyle =
    [ styles
        [ marginTop (px -20)
        , color darkGrey
        ]
    ]


dateStyle : List (Html.Attribute msg)
dateStyle =
    [ styles
        [ color dateColor
        , fontSize (em 0.75)
        ]
    ]


type alias StyleSpec msg =
    List (Html.Attribute msg)


articleStyle : StyleSpec msg
articleStyle =
    [ styles
        [ marginBottom (px 50) ]
    ]


articleTitleStyle : List (Html.Attribute msg)
articleTitleStyle =
    [ styles
        [ property "-webkit-margin-before" "0"
        ]
    ]


tagListStyle : List (Html.Attribute msg)
tagListStyle =
    [ styles
        [ padding zero
        , marginTop (px 30)
        ]
    ]


tagStyle : List (Html.Attribute msg)
tagStyle =
    [ styles
        [ display inlineBlock
        , borderRadius (px 15)
        , fontSize (px 15)
        , backgroundColor mediumBlue
        , padding2 (px 5) (px 15)
        , marginRight (px 10)
        , boxShadow4 (px 0) (px 10) (px 30) (rgba 0 0 0 0.2)
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
