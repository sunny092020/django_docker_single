#!/bin/bash

ENV=$1
docker-compose -f common/docker-compose.$ENV.yml down
