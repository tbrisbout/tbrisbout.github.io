module Article exposing (Article, sureDate)

import Date exposing (Date)


type alias Article =
    { title : String
    , date : Date
    , content : String
    }


sureDate : String -> Date
sureDate date =
    Date.fromString date
        |> Result.withDefault (Date.fromTime 0)
