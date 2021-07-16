#!/bin/bash
set -eux

# Setup bundle
bundle config set path /workspaces/webapp/vendor/bundle;

# Install all the dependencies
bundle install;
yarn install;

# Remove a potentially pre-existing server.pid for Rails.
rm -f /workspaces/webapp/tmp/pids/server.pid;

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
