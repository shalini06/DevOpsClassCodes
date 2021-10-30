FROM centOS:latest
MAINTAINER shalinikumari06@gmail.com
RUN yum install -y httpd.\
 zip \
unzip
ADD    /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle kndle.zip
CMD [*/usr/$bin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
