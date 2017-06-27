import './main.css'
const Elm = require('./App.elm')

const root = document.getElementById('root')

Elm.App.embed(root)

setTimeout(() => {
  document.querySelectorAll('a')
    .forEach(a => a.target = '_blank')
}, 100)
