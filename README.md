# Django docker single

$ cd django_docker_single  

$ vi common/.env.prod
```Edit 
MAIN_MODULE= <MAIN_MODULE_NAME>
for exp:
   MAIN_MODULE=main for order_system
   MAIN_MODULE=smart_assist_maintenance for smart_assist_maintenance
```

$ ./build.sh <PATH_TO_DJANGO_PROJECT> <PRODUCTION/DEVELOPMENT>
for exp:  
$ ./build.sh ../smart_assist/smart_assist_maintenance/  

you will see this output  
```
Successfully tagged common_nginx:latest
Recreating common_web_1 ... done
Recreating common_nginx_1 ... done
Attaching to common_web_1, common_nginx_1
web_1    | Waiting for postgres...
nginx_1  | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
nginx_1  | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
web_1    | PostgreSQL started
nginx_1  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
web_1    | [2021-04-12 04:43:59 +0000] [1] [INFO] Starting gunicorn 20.1.0
web_1    | [2021-04-12 04:43:59 +0000] [1] [INFO] Listening at: http://0.0.0.0:8000 (1)
web_1    | [2021-04-12 04:43:59 +0000] [1] [INFO] Using worker: sync
nginx_1  | 10-listen-on-ipv6-by-default.sh: info: /etc/nginx/conf.d/default.conf is not a file or does not exist
web_1    | [2021-04-12 04:43:59 +0000] [8] [INFO] Booting worker with pid: 8
nginx_1  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
nginx_1  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
nginx_1  | /docker-entrypoint.sh: Configuration complete; ready for start up
```

$ ./migrate.sh  

$ ./code  <PATH_TO_DJANGO_PROJECT>   <NAME_OF_APP>  
for exp:  
./code.sh ../smart_assist/smart_assist_maintenance/ sam  
or  
./code.sh ../order_system/ oms    

NAME_OF_APP=sam or oms  