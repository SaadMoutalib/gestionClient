#!/bin/sh
mvn clean package && docker build -t ma.emsi.saad/gestionClientSaad .
docker rm -f gestionClientSaad || true && docker run -d -p 9080:9080 -p 9443:9443 --name gestionClientSaad ma.emsi.saad/gestionClientSaad