docker-realtime-apache2
=======================

A simple docker container that runs apache for realtime

To build the image with the name 'AIFDR/apache-realtime' do:

```
./build.sh
```

To run a container do (will make a container with name 
'inasafe-realtime-apache' and will mount volume for realtime needs):

```
./run.sh
```

There is no log in for this container - use docker cp and docker import
to move files in and out of the container.


-----------

Tim Sutton (tim@linfiniti.com)
May 2014
