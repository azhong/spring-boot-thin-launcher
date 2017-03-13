FROM java:8u111-jdk-alpine

WORKDIR /usr/src/app
EXPOSE 8080
COPY entrypoint.sh /usr/src/app/
ENTRYPOINT [ "/usr/src/app/entrypoint.sh" ]

COPY app-0.0.1-SNAPSHOT.jar /usr/src/app/
## maybe the depoly system support this & COPY into /usr/src/app
java -Dthin.dryrun=true -Dthin.root=/usr/src/app -jar app-0.0.1-SNAPSHOT.jar
