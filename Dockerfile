FROM phpdockerio/php74-fpm

LABEL maintainer="Thomas Combe"

RUN apt-get update &&  \
	apt-get -y --no-install-recommends install \
	libmagickwand-dev \
	ghostscript \
	git \
	php7.4-intl \
	php7.4-mysql \
	php7.4-gd \
	php7.4-xdebug \
	php-pear \
	php7.4-dev \
	make

RUN pecl channel-update pecl.php.net && pecl install xdebug-2.9.8

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
