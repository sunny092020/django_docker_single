#!/bin/sh

echo "Waiting for postgres..."
export LD_PRELOAD='/usr/local/lib/faketime/libfaketime.so.1'
export FAKETIME="@2020-09-01 00:00:00"
exec "$@"
