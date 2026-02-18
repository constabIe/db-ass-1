alias n := nuke

set shell := ["sh", "-c"]

[default]
_:
    @just --list --unsorted --list-prefix "···· "

# Initialize environment variables
env:
    cp .env.example .env

# Delete files ignored by `git`
clean:
    git clean -Xdf

[confirm]
nuke:
    docker compose down -v --remove-orphans