#!/bin/bash

WEBDIR=/home/realtime/web

docker.io kill inasafe-realtime-apache
docker.io rm inasafe-realtime-apache

mkdir -p $WEBDIR
docker.io run --name='inasafe-realtime-apache' \
	-v $WEBDIR:/web \
	-p 8080:80 \
	-d -t AIFDR/apache-realtime
