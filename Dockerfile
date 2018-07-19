FROM openjdk:8-jdk-alpine
MAINTAINER Guozheng Ge <guozheng.ge@gmail.com>
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
CMD ./gradlew run