# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

$ docker-compose run --rm app bundle exec rails webpacker:install
$ docker-compose run --rm app bundle exec rails webpacker:install:vue

docker-compose run --rm app bundle exec rails db:create db:migrate

docker-compose run --rm app bundle exec rails g controller top top

コンテナ内
docker-compose run --rm app bash

