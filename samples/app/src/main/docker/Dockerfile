FROM java:8u111-jdk-alpine

COPY app-0.0.1-SNAPSHOT.jar /usr/src/app/
COPY entrypoint.sh /usr/src/app/

WORKDIR /usr/src/app

RUN java -Dthin.dryrun=true -Dthin.root=/usr/src/app -jar app-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT [ "/usr/src/app/entrypoint.sh" ]

