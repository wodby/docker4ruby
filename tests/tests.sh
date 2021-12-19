#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

rake db:migrate
rake db:seed

if [[ "$(rails version)" =~ ^6. ]]; then
  curl -s nginx | grep -q "Yay! You&rsquo;re on Rails!"
else
  curl -s nginx | grep -q "Rails version:"
fi
