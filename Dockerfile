FROM phpdockerio/php:8.4-fpm

LABEL maintainer="Thomas Combe"

RUN apt-get update &&  \
	apt-get -y --no-install-recommends install \
	libmagickwand-dev \
	ghostscript \
	git \
    mysql-client \
	ssh-client \
	php8.4-intl \
	php8.4-mysql \
	php8.4-gd \
	php8.4-redis \
	php8.4-xdebug \
	php8.4-bcmath \
	php8.4-soap

ENV XDEBUG_MODE coverage

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
