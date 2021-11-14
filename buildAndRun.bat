@echo off
call mvn clean package
call docker build -t ma.emsi.saad/gestionClientSaad .
call docker rm -f gestionClientSaad
call docker run -d -p 9080:9080 -p 9443:9443 --name gestionClientSaad ma.emsi.saad/gestionClientSaad