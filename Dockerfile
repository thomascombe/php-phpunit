FROM phpdockerio/php:8.1-fpm

LABEL maintainer="Thomas Combe"

RUN apt-get update &&  \
	apt-get -y --no-install-recommends install \
	libmagickwand-dev \
	ghostscript \
	git \
	ssh-client \
	php8.1-intl \
	php8.1-mysql \
	php8.1-gd \
	php8.1-redis \
	php8.1-xdebug

ENV XDEBUG_MODE coverage

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
