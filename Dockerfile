FROM ubuntu:trusty
LABEL vendor="HelloFresh"
MAINTAINER "Kieran Patel <me@kieranajp.co.uk>"

WORKDIR /tmp

ARG php_version
ENV php_version=${php_version}

# Add some basic essential packages
RUN apt-get -qq -y update && \
    apt-get -qq -y install \
        build-essential \
        git \
        locales \
        python-software-properties \
        software-properties-common \
        zlib1g-dev

# Add the PHP PPA to compile against
RUN locale-gen en_US.UTF-8 && export LANG=en_US.UTF-8 && \
    add-apt-repository -y ppa:ondrej/php && \
    apt-get -qq -y update && \
    apt-get -qq -y install \
        php${php_version}-cli \
        php${php_version}-dev

# Compile librdkafka library
RUN mkdir /out && git clone https://github.com/edenhill/librdkafka && cd librdkafka && \
    ./configure && make && make install && \
    cp /usr/local/lib/librdkafka.so.1 /out

# Compile phpkafka library
RUN git clone https://github.com/EVODelavega/phpkafka && cd phpkafka && \
    phpize && \
    ./configure --enable-kafka && \
    make && \
    make install && \
    cp $(php-config --extension-dir)/kafka.so /out

# Compile php-rdkafka library
    RUN git clone https://github.com/arnaud-lb/php-rdkafka && cd php-rdkafka && \
    phpize && \
    ./configure && \
    make all -j 5 && \
    make install && \
    cp $(php-config --extension-dir)/rdkafka.so /out

