# phpkafka Binary Artifacts

These are binaries for the following shared libraries to use the [Kafka](http://kafka.apache.org/) message broker from PHP:

- [librdkafka](https://github.com/edenhill/librdkafka/) C driver
- [php-rdkafka](https://github.com/arnaud-lb/php-rdkafka) PHP extension based on `librdkafka`
- [php-kafka](https://github.com/EVODelavega/phpkafka) PHP extension based on `librdkafka`

## Usage

This repository contains versions of these binaries built for amd64 on the following PHP and OS version combinations.

**Each binary is on a separate branch; please pull the binaries from the branch that matches your OS / PHP version**

- [PHP5.6 on Ubuntu 14.04](https://github.com/hellofresh/phpkafka/tree/trusty-5.6)
- [PHP5.6 on Ubuntu 16.04](https://github.com/hellofresh/phpkafka/tree/xenial-5.6)
- [PHP7.0 on Ubuntu 14.04](https://github.com/hellofresh/phpkafka/tree/trusty-7.0)
- [PHP7.0 on Ubuntu 16.04](https://github.com/hellofresh/phpkafka/tree/xenial-7.0)
- [PHP7.1 on Ubuntu 14.04](https://github.com/hellofresh/phpkafka/tree/trusty-7.1)
- [PHP7.1 on Ubuntu 16.04](https://github.com/hellofresh/phpkafka/tree/xenial-7.1)

<small>The v0.1 and v0.2 branches are there for legacy reasons and should not be used</small>

The PHP runtimes are from the [`ppa:ondrej/php`](https://launchpad.net/~ondrej/+archive/ubuntu/php). You _must_ install PHP from this PPA in order for these binaries to function.

## Building

The binaries are built in the provided Docker container. Ensure you have Docker installed, then run the provided ./build.sh script from the branch that matches your desired OS / PHP version combination.

To change PHP version, change the variable sent to Docker in the build.sh script.

TO change Ubuntu version, change the base image in the Dockerfile.

##### Important: This repository uses Git Large File Storage (LFS). To use it in a meaningful way, the Git-LFS extension has to be installed. For instructions see the [Git-LFS website](https://git-lfs.github.com/).

