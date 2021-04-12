#!/bin/bash

set -e

APP_DIR=$1
APP_NAME=$2

docker cp $APP_DIR/$APP_NAME/static/$APP_NAME/. common_nginx_1:/home/app/web/staticfiles/django_app/
docker cp $APP_DIR/$APP_NAME/static/admin common_nginx_1:/home/app/web/staticfiles/
docker cp $APP_DIR/$APP_NAME common_web_1:/home/app/web/

docker exec common_web_1 sh -c 'cd /home/app/web/'$APP_NAME' && django-admin makemessages -a && django-admin compilemessages'
