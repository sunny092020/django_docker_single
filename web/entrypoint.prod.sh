#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."
    export LD_PRELOAD='/usr/local/lib/faketime/libfaketime.so.1'
    export FAKETIME="@2020-09-01 00:00:00"
    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

exec "$@"
