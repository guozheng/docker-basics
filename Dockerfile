
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD build/install/docker-basics docker-basics
EXPOSE 3000
ENTRYPOINT docker-basics/bin/docker-basics
