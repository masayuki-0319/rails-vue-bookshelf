#!/usr/bin/env bash

docker-compose run --rm app bundle install
docker-compose run --rm app ./bin/rails db:create
docker-compose run --rm app ./bin/rails db:migrate
docker-compose run --rm app ./bin/rails db:seed
