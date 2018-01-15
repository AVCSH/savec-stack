FROM avcsh/savec-php-base

RUN apk add --update nginx supervisor

ADD nginx.conf /etc/nginx/

RUN adduser -D -g '' -G www-data www-data

RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

EXPOSE 80

ADD supervisord.conf /etc/
CMD ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
