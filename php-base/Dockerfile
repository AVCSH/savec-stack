FROM alpine:3.7

LABEL maintainer="Michal Hošna <mh@michalhosna.com>"

RUN apk add --update \
    php7 \
    php7-fpm \
    php7-apcu \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-gd \
    php7-iconv \
    php7-imagick \
    php7-json \
    php7-intl \
    php7-mcrypt \
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-mysqli \
    php7-xml \
    php7-zlib \
    php7-phar \
    php7-tokenizer \
    php7-session \
    php7-pear \
    php7-dev \
    make \
    curl

ADD savec.ini /etc/php7/conf.d/99_savec.ini

ADD www.conf /etc/php7/php-fpm.d/

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*

RUN mkdir /src
WORKDIR /src

EXPOSE 9000

CMD ["php-fpm7", "-F"]

