#--------- Generic stuff all our Dockerfiles should start with so we get caching ------------
FROM ubuntu:14.04
MAINTAINER Tim Sutton <tim@kartoza.com>

RUN  export DEBIAN_FRONTEND=noninteractive
ENV  DEBIAN_FRONTEND noninteractive
RUN  dpkg-divert --local --rename --add /sbin/initctl

RUN apt-get install -y apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /tmp
ENV APACHE_PID_FILE apache.lock

ADD web/quake-apache.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]

