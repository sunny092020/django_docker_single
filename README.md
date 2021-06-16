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
$ ./build.sh ../smart_assist/smart_assist_maintenance/ development
$ ./build.sh ../smart_assist/smart_assist_maintenance/ production

similarly:
./start.sh ../smart_assist/smart_assist_maintenance/ development

$ ./migrate.sh  

$ ./code  <PATH_TO_DJANGO_PROJECT>   <NAME_OF_APP>  
for exp:  
./code.sh ../smart_assist/smart_assist_maintenance/ sam  
or  
./code.sh ../order_system/ oms    

NAME_OF_APP=sam or oms  
