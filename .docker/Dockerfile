FROM ubuntu:16.04
MAINTAINER @raulneis <raulneis@gmail.com>

RUN apt-get update && apt-get install -y git nano

ADD .docker/composer.phar /usr/local/bin/composer
ADD .docker/xampp-linux-x64-1.8.2-6-installer.run /tmp/

RUN usermod -u 1000 www-data
RUN chmod +x /tmp/xampp-linux-x64-1.8.2-6-installer.run
RUN /tmp/xampp-linux-x64-1.8.2-6-installer.run --mode unattended

RUN update-alternatives --install /usr/bin/php php /opt/lampp/bin/php 54
RUN /opt/lampp/xampp oci8

ADD .docker/httpd.conf /opt/lampp/etc/httpd.conf
ADD .docker/httpd-xampp.conf /opt/lampp/etc/extra/httpd-xampp.conf
ADD .docker/php.ini /opt/lampp/etc/php.ini

ADD .docker/.bashrc /root/.bashrc
ADD .docker/sf /root/bin/sf
RUN chmod +x /root/bin/sf

ADD .docker/.bashrc /var/www/.bashrc
ADD .docker/sf /var/www/bin/sf
RUN chmod +x /var/www/bin/sf

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

EXPOSE 80

CMD ["/opt/lampp/bin/apachectl", "-D", "FOREGROUND"]
