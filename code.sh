#!/bin/bash

set -e

APP_DIR=$1
APP_NAME=$2

docker cp $APP_DIR/$APP_NAME common_web_1:/home/app/web/
docker exec common_web_1 sh -c 'cd /home/app/web/'$APP_NAME' && python3 manage.py collectstatic && django-admin makemessages -a && django-admin compilemessages'
