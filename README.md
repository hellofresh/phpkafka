phpkafka Binary Artifacts
=======

These are binary artifacts for the following shared libraries to use the [Kafka](http://kafka.apache.org/) message broker from PHP.

- [librdkafka](https://github.com/edenhill/librdkafka/) C driver (commit id [4822822](https://github.com/edenhill/librdkafka/commit/48228229487563d83ae96021f7121dd75cfbe2c8))
- [php-rdkafka](https://github.com/arnaud-lb/php-rdkafka) PHP extension based on `librdkafka` (commit id [4e6a074](https://github.com/arnaud-lb/php-rdkafka/commit/4e6a07438bf1664f995c76ad74800d57100e525d)).

These artifacts are build for (and on):
- PHP7 **only**! If you need PHP5 version, check [v0.1](https://github.com/hellofresh/phpkafka/tree/v0.1) tag.
- Ubuntu Linux 14.04.4 LTS (trusty),
- CPU architecture: amd64,
- PHP 5.6 runtime based on [`ppa:ondrej/php`](https://launchpad.net/~ondrej/+archive/ubuntu/php).
 - **Note: Without using the custom PPA, the shared library cannot be used by the PHP runtime and PHP _will break_ beacause of that!**


Two relevant library dependencies for `kafka.so`:
- `libc.so.6`
- `libssl.so.1.0.2`
 
##### Important: This repository uses Git Large File Storage (LFS). To use that repository in a meaningful way, the Git-LFS extension has to be installed. For instructions see the [Git-LFS website](https://git-lfs.github.com/).
