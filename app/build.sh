#!/usr/bin/env bash

mix deps.get --only prod
MIX_ENV=prod mix compile
brunch build --production
mix phx.digest
MIX_ENV=prod mix ecto.create
MIX_ENV=prod mix ecto.migrate
PORT=4001 MIX_ENV=prod mix phx.server