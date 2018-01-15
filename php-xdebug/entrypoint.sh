#!/bin/sh

if [ -z "${XDEBUG_REMOTE_HOST}" ]; then
    (>&2 echo -e "\e[101m\e[97m Variable XDEBUG_REMOTE_HOST is not set! This container then doesn't make any sense \e[0m")
else
    echo Adding "xdebug.remote_host=${XDEBUG_REMOTE_HOST}" to xdebug.ini
    echo "xdebug.remote_host=${XDEBUG_REMOTE_HOST}" >> /etc/php7/conf.d/xdebug.ini
fi

php-fpm7 -F
