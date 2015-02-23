#
#       .
#        ":"
#      ___:____     |"\/"|
#    ,'        `.    \  /
#    |  O        \___/  |
#  ~^~^~^~^~^~^~^~^~^~^~^~^~
#Project builder container by kendu
FROM ubuntu
MAINTAINER Lovrenc Avsenek <a.lovrenc@gmail.com>
USER root
RUN locale-gen sl_SI.UTF-8
# Use Ondřej Surý's PHP 5.6 packages
RUN echo "deb http://ppa.launchpad.net/ondrej/php5-5.6/ubuntu trusty main " \
       > /etc/apt/sources.list.d/ondrej.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C
RUN     apt-get update && apt-get install -y \
        php5 \
        php5-cli \
        php5-curl \
        php5-xdebug  \
        php5-mcrypt \
        php5-gmp \
        php5-imagick \
        php5-intl \
        php5-json \
        php5-memcache \
        php5-pgsql \
        php5-readline \
        php5-sqlite \
        nodejs \
        npm \
        sudo \
        ruby-full \
        git \
        curl \
        wget && \
        apt-get clean

RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN gem install compass
RUN php5enmod mcrypt

RUN npm install -g bower grunt-cli gulp gulp-jshint gulp-uglify gulp-continuous-concat gulp-sass gulp-minify-css gulp-csslint gulp-watch grunt grunt-cli && \
    npm install

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer
