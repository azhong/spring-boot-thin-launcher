#!/bin/bash

./mvnw clean install -Dmaven.test.skip=true

cd ./samples/app/
mvn clean package
if [ -f ./target/app-0.0.1-SNAPSHOT.jar ]; then
    cp ./target/app-0.0.1-SNAPSHOT.jar ./src/main/docker/
else
    echo "no app*.jar found" && exit 1
fi

cd ./samples/app/src/main/docker/

docker build -t demo . || exit 2
