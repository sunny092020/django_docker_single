#!/bin/bash

docker exec common_web_1 sh -c 'cd /home/app/web/ && ./script/migrate.sh'
