FROM openjdk:8-alpine

ADD target/deploy-with-docker-0.0.1-SNAPSHOT.jar /opt/ms/deploy-with-docker.jar

EXPOSE 8080

CMD ["java", "-jar", "/opt/ms/deploy-with-docker.jar"]
