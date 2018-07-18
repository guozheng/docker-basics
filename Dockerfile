FROM openjdk:8-jdk-alpine
MAINTAINER Guozheng Ge <guozheng.ge@gmail.com>
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
CMD ./gradlew build install
ADD build/install/docker-basics docker-basics
EXPOSE 3000
ENTRYPOINT docker-basics/bin/docker-basics