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

## Building a Release

```

docker-compose exec service sh ./.bin/prod.init.sh

docker-compose exec service sh ./.bin/server.sh


```

## Version UP


file: mix.exs

```

def project do
   [
    ...
    version: "{new version}",
    ...
   ]
end

```

```
docker-compose exec service sh ./.bin/upgrade.sh

docker-compose exec service _build/prod/rel/app/bin/app upgrade {VERSION}
```

## Test

```
docker-compose exec service mix test
```