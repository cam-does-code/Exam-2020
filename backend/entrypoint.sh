#!/bin/sh
set -e
unset BUNDLE_PATH
unset BUNDLE_BIN
rm -f /rails-app/tmp/pids/server.pid
sleep 30
exec "$@"