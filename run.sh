#!/bin/bash

WEBDIR=/home/realtime/web

docker.io kill inasafe-realtime-apache
docker.io rm inasafe-realtime-apache

mkdir -p $WEBDIR
cp web/index.html ${WEBDIR}/
cp -r web/resource ${WEBDIR}/
# Uncomment to run with a bash prompt for testing
# You can start apache inside the container using
# apache2ctl -D FOREGROUND

#docker.io run --name='inasafe-realtime-apache' \
#	-v $WEBDIR:/var/www \
#	-p 8080:80 \
#        --entrypoint=/bin/bash \
#	-i -t AIFDR/apache-realtime -i

# Once testing is done comment the above and use
# this one rather.
docker.io run --name='inasafe-realtime-apache' \
	-v $WEBDIR:/var/www \
        -p 8080:80 \
	-d -t AIFDR/apache-realtime


