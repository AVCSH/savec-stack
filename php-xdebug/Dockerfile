FROM avcsh/savec-php-dev

RUN apk --update add g++

RUN pecl install xdebug

ADD xdebug.ini /etc/php7/conf.d/

ADD entrypoint.sh /var/

CMD ["/bin/sh", "/var/entrypoint.sh"]

EXPOSE 9001
