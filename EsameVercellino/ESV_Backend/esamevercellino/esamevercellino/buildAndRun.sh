#!/bin/sh
mvn clean package && docker build -t com.tss/esamevercellino .
docker rm -f esamevercellino || true && docker run -d -p 8080:8080 -p 4848:4848 --name esamevercellino com.tss/esamevercellino 
