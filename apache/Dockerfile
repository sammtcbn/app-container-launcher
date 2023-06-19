FROM ubuntu

RUN apt-get update
RUN apt-get -y install tzdata
RUN apt-get -y install apache2
RUN echo "Hello Apache2" > /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
