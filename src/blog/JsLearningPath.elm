module JsLearningPath exposing (article)

import Article exposing (Article, sureDate)


article : Article
article =
    { title = "Creating a JS learning path"
    , date = sureDate "2017-06-27"
    , tags = [ "javascript", "learning" ]
    , content = content
    }


content : String
content =
    """
I am coming up with a JS learning path for a CS beginner (as in career reorientation, no specific CS background).

### Minimal requirements for the student
- No specific CS background expected
- A _working office_ knowledge is expected (Windows, Chrome, Google...)
- Good ability to read english

### Main objectives:
- Attain Minimal Working Knowledge (as specified below)
- Maintain motivation (do not take for granted that the student will proceed)
- Avoid traditional CS style university course (eg C, C++, sorts...)
- Start from the top layer (UX) and grow from there
- Grow a developer mindset (also specified below)


### State of the art
I have looked for online guidance and found [some good ones](https://sivers.org/learn-js).
I have done the full JS course path on Codeschool and Codecademy to find inspiration.
I know experienced JS developers who recommend mostly doing nodeschool.io tutorials.


### Minimal Working Knowledge

#### Programming in General

- Know what are the imperative, object-oriented and functional paradigms
- Know how Client-Server communication works

#### JS

- variables
- primitive types (string, number, boolean)
- conditionals
- arrays
- loops
- functions
- objects (as dictionaries)
- foreach / map / filter
- OO in JS (this, prototypes, typeof, instanceof, primitive vs complex...)
- ES6+ syntax
- DOM & Events
- fetch and AJAX

#### JS Ecosystem

Know useful libraries
- lodash
- moment

#### React

- Boostrapping a project with `create-react-app`
- Declaring routes in `react-router`
- Knowing different types of components
- Lifecycle of a component (componentWillMount...)
- State and Props
- how `setState` works
- writing JSX

#### CSS

- common properties
- flexbox
- CSS modules

#### HTML5

- common tags

#### Git

- git add, commit, amend, diff ...
- git checkout, branch...
- git push / pull / rebase
- Working with pull requests and feature branches


#### Tooling

- running existing npm scripts
- installing npm dependencies
- looking in package.json
- Using an already configured linter
- Tests ?
- Efficient in an IDE (Atom)
- Efficient with Chrome DevTools


### Good Developer Mindset

- Know how to search for information
- Know how to properly as for information
- Have a personal workflow
- Put in place an efficient technical watch
- Know how to interact efficiently with others
- Know how to stay motivated
- Knowing your own level
- Knowing what to learn next

    """
