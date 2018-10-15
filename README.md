# BokunoPhoenix

[![CircleCI](https://circleci.com/gh/sumiyoshi/BokunoPhoenix/tree/master.svg?style=svg)](https://circleci.com/gh/sumiyoshi/BokunoPhoenix/tree/master)

## Install

```
docker-compose build

docker-compose up -d

docker-compose exec service mix deps.get

docker-compose exec service mix ecto.create
```

## RUN

```
docker-compose exec service mix phx.server
```

## Prod

```
docker-compose exec service mix release.init

docker-compose exec service sh ./.bin/build.sh

docker-compose exec service sh ./.bin/server.sh
```

## Test

```
docker-compose exec service mix test
```