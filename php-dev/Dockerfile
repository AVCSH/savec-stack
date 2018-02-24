FROM avcsh/savec-php-base

# Composer

RUN apk --update add \
    php7-simplexml \
    php7-xmlwriter \
    php7-zip

RUN curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer

# PHP stan
# see https://github.com/phpstan/phpstan

ENV PHPSTAN_VERSION 0.9.x

RUN composer global require phpstan/phpstan ^0.9

# PHP cs fixer

RUN composer global require \
    symplify/easy-coding-standard \
    friendsofphp/php-cs-fixer:^2.3 \
    slevomat/coding-standard \
    friendsofphp/php-cs-fixer \
    squizlabs/php_codesniffer

ENV PATH="/root/.composer/vendor/bin/:${PATH}"
