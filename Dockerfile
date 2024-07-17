#baseimage
FROM bellsoft/liberica-openjdk-alpine:17.0.8

#install curl and jq
RUN apk add curl jq

#workspace
WORKDIR /home/selenium-docker

#add the required files
ADD target/docker-resources ./
ADD runner.sh runner.sh

RUN dos2unix runner.sh

#run the tests
ENTRYPOINT sh runner.sh

