#!/usr/bin/env bash

docker rm phpkafka

docker build -t phpkafka . --build-arg php_version=5.6
docker run --name phpkafka phpkafka

CONTAINER_ID=$(docker ps -aqf "name=phpkafka")

printf "\n\n===> Grabbing binaries from $CONTAINER_ID\n\n"

printf "librdkafka.so.1... "
docker cp $CONTAINER_ID:/out/librdkafka.so.1 ./
printf "done!\n\n"
printf "kafka.so... "
docker cp $CONTAINER_ID:/out/kafka.so ./
printf "done!\n\n"
printf "rdkafka.so... "
docker cp $CONTAINER_ID:/out/rdkafka.so ./
printf "done!\n\n"

