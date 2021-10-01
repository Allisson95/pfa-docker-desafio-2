#
# Build stage
#
FROM maven:3.8.2-openjdk-11-slim AS build
COPY src /app/src
COPY pom.xml /app
RUN mvn -f /app/pom.xml clean package -DskipTests=true

#
# Package stage
#
FROM openjdk:11
RUN apt-get update && apt-get install -y wget
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
COPY .docker/ /app/.docker
RUN ["chmod", "+x", "/app/.docker/entrypoint.sh"]
COPY --from=build /app/target/*.jar /app/app.jar
WORKDIR /app