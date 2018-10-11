# BokunoPhoenix

[![CircleCI](https://circleci.com/gh/sumiyoshi/BokunoPhoenix.svg?style=svg)](https://circleci.com/gh/sumiyoshi/BokunoPhoenix)

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


## Test

```
docker-compose exec service mix test
```