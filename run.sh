#!/bin/bash

WEBDIR=/home/realtime/web
APACHE_IMAGE=docker-realtime-apache

docker.io kill ${APACHE_IMAGE}
docker.io rm ${APACHE_IMAGE}

mkdir -p ${WEBDIR}

docker.io run --name="${APACHE_IMAGE}" \
	-v ${WEBDIR}:/var/www \
    -p 8080:80 \
	-d -t aifdr/${APACHE_IMAGE}
