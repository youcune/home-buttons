#!/bin/bash -eux

cd /home/pi/apps/home-buttons
export RAILS_ENV=production

echo 'Stopping servers ...'

set +e
kill -9 `cat tmp/pids/server.pid`
kill -9 `cat tmp/pids/sidekiq.pid`
set -e

echo 'Updating from Git repository ...'

git pull --ff-only

bundle install
bundle exec rake db:migrate assets:clean assets:precompile

echo 'Starting servers ...'

bundle exec rails server -d --bind=0.0.0.0
bundle exec sidekiq -C config/sidekiq.yml -d
