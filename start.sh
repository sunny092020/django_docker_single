#!/bin/bash

APP_DIR=$1
ENV=$2

APP_DIR=$APP_DIR docker-compose --env-file $PWD/common/.env.prod -f common/docker-compose.$ENV.yml up -d
