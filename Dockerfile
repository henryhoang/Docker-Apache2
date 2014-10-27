FROM ubuntu:12.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get update && apt-get install -qy apache2


ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

VOLUME /var/www

EXPOSE 80

ENTRYPOINT ["usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
