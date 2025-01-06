#!/usr/bin/env -S just --justfile
# ^ A shebang isn't required, but allows a justfile to be executed
#   like a script, with `./justfile test`, for example.

# list available recipes
default:
  @just --list

alias s := serve

# serve the website on port `8080` (default)
serve PORT='8080':
    python3 -m http.server {{ PORT }}
