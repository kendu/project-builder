################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################

#################################---INFO---#####################################

FROM kendu/php:5.6
MAINTAINER devops@kendu.si

################################################################################

################################---BUILD---#####################################

RUN apt-get update; \
    apt-get install -q -y \
        git \
        curl \
        wget \
        build-essential \
        make \
        nodejs \
        npm \
        ruby-full


RUN ln -s /usr/bin/nodejs /usr/bin/node; \
    curl -sL https://deb.nodesource.com/setup_4.x | bash -; \
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


################################################################################
