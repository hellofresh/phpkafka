phpkafka Binary Artifacts
=======

These are binary artifacts for the following shared libraries to use the [Kafka](http://kafka.apache.org/) message broker from PHP.

- [librdkafka](https://github.com/edenhill/librdkafka/) C driver (commit id [a7424f8](https://github.com/edenhill/librdkafka/commit/a7424f8a249b9f0866c34c95b5c6f9c8d67d5d30))
- [phpkafka](https://github.com/EVODelavega/phpkafka) PHP extension based on `librdkafka` (commit id [8287630](https://github.com/EVODelavega/phpkafka/commit/828763013e858a2bada6c403861e27aced16d003)).

These artifacts are build for (and on):
- Ubuntu Linux 14.04.4 LTS (trusty),
- CPU architecture: amd64,
- PHP 5.6 runtime.


Two relevant library dependencies for `kafka.so`:
- `libc.so.6`
- `libssl.so.1.0.2`
 
