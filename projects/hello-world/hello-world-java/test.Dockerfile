FROM docker.repo1.uhc.com/ecg/eclipse-temurin:17-jre-alpine
USER root
RUN apk update 
RUN apk add  curl
RUN apk add --no-cache openssh-client