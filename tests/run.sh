#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

docker-compose build
docker-compose up -d
docker-compose exec -T postgres make check-ready -f /usr/local/bin/actions.mk max_try=12 wait_seconds=5
sleep 10
docker-compose exec -T sidekiq ps aux | grep sidekiq
docker-compose exec -T ruby tests.sh
docker-compose down
