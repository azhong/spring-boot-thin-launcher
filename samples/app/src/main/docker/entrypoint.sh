#!/bin/sh

nohup java -Dthin.root=/usr/src/app -Ddebug=true -jar /usr/src/app/app-0.0.1-SNAPSHOT.jar &>/usr/src/app/out.log &

while true; do sleep 1000; done


