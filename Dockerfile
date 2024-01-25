FROM phpdockerio/php:8.3-fpm

LABEL maintainer="Thomas Combe"

RUN apt-get update &&  \
	apt-get -y --no-install-recommends install \
	libmagickwand-dev \
	ghostscript \
	git \
	ssh-client \
	php8.3-intl \
	php8.3-mysql \
	php8.3-gd \
	php8.3-redis \
	php8.3-xdebug \
	php8.3-bcmath \
	php8.3-soap

ENV XDEBUG_MODE coverage

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
