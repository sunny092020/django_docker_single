#!/bin/bash

APP_DIR=$1

docker cp $APP_DIR/oms/static/oms common_nginx_1:/home/app/web/staticfiles/
docker cp $APP_DIR/oms/static/admin common_nginx_1:/home/app/web/staticfiles/
docker cp $APP_DIR/oms common_web_1:/home/app/web/

docker exec common_web_1 sh -c 'cd /home/app/web/oms && django-admin.py makemessages -a && django-admin.py compilemessages'
