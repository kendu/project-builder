#
#       .
#        ":"
#      ___:____     |"\/"|
#    ,'        `.    \  /
#    |  O        \___/  |¸
#  ~^~^~^~^~^~^~^~^~^~^~^~^~
#Project builder container by kendu
FROM debian
MAINTAINER DevOps <devops@kendu.si>
USER root
ENV DEBIAN_FRONTEND noninteractive

# Ondřej Surý's PHP 5.6 packages
RUN echo "deb http://ppa.launchpad.net/ondrej/php5-5.6/ubuntu trusty main " \
       > /etc/apt/sources.list.d/ondrej.list ; \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C

RUN apt-get update; \
    apt-get install -q -y \
        git \
        curl \
        wget \
        build-essential \
        make
RUN    apt-get install -q -y \
        php5 \
        php5-cli \
        php5-curl \
        php5-xdebug \
        php5-mcrypt \
        php5-gmp \
        php5-imagick \
        php5-intl \
        php5-json \
        php5-memcache \
        php5-pgsql \
        php5-readline \
        php5-sqlite \
        ruby-full
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -; \
    apt-get install -y nodejs && \
    npm install -g npm
RUN npm install -g \
        bower \
        grunt \
        grunt-cli \
        gulp \
        load-grunt-tasks \
        time-grunt \
        raml2html \
        elasticdump; \
    apt-get clean

RUN gem install compass
RUN php5enmod php5-mcrypt


RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer
