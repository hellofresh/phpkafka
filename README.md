phpkafka Binary Artifacts
=======

These are binary artifacts for the following shared libraries to use the [Kafka](http://kafka.apache.org/) message broker from PHP.

- [librdkafka](https://github.com/edenhill/librdkafka/) C driver (commit id [a7424f8](https://github.com/edenhill/librdkafka/commit/a7424f8a249b9f0866c34c95b5c6f9c8d67d5d30))
- [phpkafka](https://github.com/EVODelavega/phpkafka) PHP extension based on `librdkafka` (commit id [8287630](https://github.com/EVODelavega/phpkafka/commit/828763013e858a2bada6c403861e27aced16d003)).

These artifacts are build for (and on):
- Ubuntu Linux 14.04.4 LTS (trusty),
- CPU architecture: amd64,
- PHP 5.6 runtime based on [`ppa:ondrej/php5-5.6`](https://launchpad.net/~ondrej/+archive/ubuntu/php5-5.6).
 - **Note: Without using the custom PPA, the shared library cannot be used by the PHP runtime and PHP _will break_ beacause of that!**


Two relevant library dependencies for `kafka.so`:
- `libc.so.6`
- `libssl.so.1.0.2`
 
##### Important: This repository uses Git Large File Storage (LFS). To use that repository in a meaningful way, the Git-LFS extension has to be installed. For instructions see the [Git-LFS website](https://git-lfs.github.com/).
