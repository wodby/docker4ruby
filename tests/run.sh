#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

docker-compose build
docker-compose up -d
docker-compose exec postgres make check-ready -f /usr/local/bin/actions.mk max_try=12 wait_seconds=5
docker-compose exec sidekiq ps aux | grep -q sidekiq
docker-compose exec ruby tests.sh
docker-compose down
