#!/usr/bin/env bash

mix deps.get --only prod
MIX_ENV=prod mix compile

cd assets/
npm run deploy

cd ../
mix phx.digest
MIX_ENV=prod mix ecto.migrate
MIX_ENV=prod mix release --env=prod --upgrade