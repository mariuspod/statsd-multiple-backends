#!/bin/bash
set -e

# start the uredir daemon
/app/uredir -l debug -r $UREDIR_PORT &

# start the statsd with configured es-backend
/app/statsd/bin/statsd /app/elasticsearch-config.js &

# wait for all subcommands
wait
