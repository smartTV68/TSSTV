#!/bin/sh
mvn clean package && docker build -t it.tss/mavenproject1 .
docker rm -f mavenproject1 || true && docker run -d -p 8080:8080 -p 4848:4848 --name mavenproject1 it.tss/mavenproject1 
