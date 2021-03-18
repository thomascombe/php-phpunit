FROM phpdockerio/php80-fpm

LABEL maintainer="Thomas Combe"

RUN apt-get update &&  \
	apt-get -y --no-install-recommends install \
	libmagickwand-dev \
	ghostscript \
	git \
	php8.0-intl \
	php8.0-mysql \
	php8.0-gd \
	php8.0-xdebug

ENV XDEBUG_MODE coverage

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
