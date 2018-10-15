#!/usr/bin/env bash

PORT=4001 MIX_ENV=prod mix phx.server
#MIX_ENV=prod mix release --env=prod
#PORT=4001 _build/prod/rel/app/bin/app foreground
