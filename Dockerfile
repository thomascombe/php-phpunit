FROM phpdockerio/php:8.2-fpm

LABEL maintainer="Thomas Combe"

RUN apt-get update &&  \
	apt-get -y --no-install-recommends install \
	libmagickwand-dev \
	ghostscript \
	git \
	ssh-client \
	php8.2-intl \
	php8.2-mysql \
	php8.2-gd \
	php8.2-redis \
	php8.2-xdebug \
	php8.2-bcmath \
	php8.2-soap

ENV XDEBUG_MODE coverage

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
