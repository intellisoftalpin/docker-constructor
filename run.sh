#!/usr/bin/env bash

docker compose --env-file ./.env.local down
docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'token-lib-cnode')
docker compose --env-file ./.env.local up -d
