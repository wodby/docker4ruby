#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

rake db:migrate
rake db:seed

curl -s nginx | grep -q "Rails version:"
