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

docker-compose exec service mix build
docker-compose exec MIX_ENV=prod mix compile

# Compile assets
$ brunch build --production

$ mix phx.digest

# Custom tasks (like DB migrations)
$ MIX_ENV=prod mix ecto.migrate

# Finally run the server
$ PORT=4001 MIX_ENV=prod mix phx.server

```

## Test

```
docker-compose exec service mix test
```