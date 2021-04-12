# Django docker single

$ cd django_docker_single  

$ ./build.sh <PATH_TO_DJANGO_PROJECT>  
for exp:  
$ ./build.sh ../smart_assist/smart_assist_maintenance/  

$ ./migrate.sh  

$ ./code  <PATH_TO_DJANGO_PROJECT>   <NAME_OF_APP>  
for exp:  
./code.sh ../smart_assist/smart_assist_maintenance/ sam  
or  
./code.sh ../order_system/ oms    

NAME_OF_APP=sam or oms  