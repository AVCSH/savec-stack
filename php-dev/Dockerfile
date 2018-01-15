FROM avcsh/savec-php-base

# Composer

RUN curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer

# PHP stan
# see https://github.com/phpstan/phpstan

ENV PHPSTAN_VERSION 0.9.x

RUN composer global require phpstan/phpstan ^0.9

# PHP cs fixer

RUN composer global require friendsofphp/php-cs-fixer

RUN export PATH="$PATH:$HOME/.composer/vendor/bin"
