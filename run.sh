#!/bin/sh

# if command starts with an option, prepend system prune basic command
if [ "${1:0:1}" = '-' ]; then
  set -- docker system prune --force "$@"
fi

echo "$@"
exec "$@"
