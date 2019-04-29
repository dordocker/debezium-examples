#!/bin/bash
docker run -it --rm --name my-maven-project -v "$(pwd)/debezium-hiking-demo":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean package
docker run -it --rm --name my-maven-project -v "$(pwd)/debezium-swarm-demo":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean package
export DEBEZIUM_VERSION=0.9
docker-compose build

# export DEBEZIUM_VERSION=0.9
# docker stack deploy -c docker-compose.yaml debezium
