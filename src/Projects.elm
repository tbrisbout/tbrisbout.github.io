module Projects exposing (Project, projects)


type alias Project =
    { name : String
    , url : String
    }


githubUrl =
    "https://github.com/"


projects =
    [ { name = "Elm Kanji"
      , url = githubUrl ++ "tbrisbout/elm-kanji"
      }
    , { name = "Elm Paris"
      , url = githubUrl ++ "tbrisbout/elm-paris"
      }
    ]
