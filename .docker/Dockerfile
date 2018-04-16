FROM ubuntu:16.04
MAINTAINER @raulneis <raulneis@gmail.com>

ADD .docker/composer.phar /usr/local/bin/composer
ADD .docker/xampp-linux-x64-1.8.2-6-installer.run /tmp/

RUN usermod -u 1000 www-data
RUN chmod +x /tmp/xampp-linux-x64-1.8.2-6-installer.run
RUN /tmp/xampp-linux-x64-1.8.2-6-installer.run --mode unattended

RUN /opt/lampp/xampp oci8
RUN update-alternatives --install /usr/bin/php php /opt/lampp/bin/php 54

ADD .docker/httpd.conf /opt/lampp/etc/httpd.conf
ADD .docker/httpd-xampp.conf /opt/lampp/etc/extra/httpd-xampp.conf
ADD .docker/php.ini /opt/lampp/etc/php.ini

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

EXPOSE 80

CMD ["/opt/lampp/bin/apachectl", "-D", "FOREGROUND"]
