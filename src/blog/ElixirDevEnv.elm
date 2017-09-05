module ElixirDevEnv exposing (article)

import Article exposing (Article, sureDate)


article : Article
article =
    { title = "Elixir Dev env with Docker"
    , date = sureDate "2017-08-29"
    , content = content
    , tags = [ "elixir", "docker" ]
    }


content : String
content =
    """
This is a note of what I have done to get started with Elixir and Phoenix.

### Install and play

- install the official [elixir docker image](https://hub.docker.com/_/elixir/)

```sh
docker pull elixir
```

- run it to automatically run `iex`, the Elixir REPL

```sh
docker run -it elixir
```
```sh
Interactive Elixir (1.5.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> 1 + 2
3
```

### Generate an Elixir Project

- use a docker volume to develop outside of container

```sh
docker run -it -v $(pwd):/app elixir bash
```

Inside the container:
```sh
cd /app
mix new hello_world
```

This will generate a project folder.
When creating files inside a docker container, it will be created as root.
You need to change the right to be able to edit from your host.

```sh
chown -R $USER hello_world
```
"""
