#https://www.jenkins.io/doc/book/installing/docker/
FROM jenkins/jenkins:2.414.1-jdk17
USER root
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean docker-workflow"

#----------------------------------how to create image and run it ---------------
#docker build -t jenkins-image --file=jenkins.Dockerfile .

# docker run --name jenkins-container --restart=on-failure --detach \
#   --env DOCKER_HOST=tcp://docker:2376 \
#   --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
#   --publish 8888:8080 --publish 50000:50000 \
#   --volume jenkins-data:/var/jenkins_home \
#   --volume jenkins-docker-certs:/certs/client:ro \
#   jenkins-image

#http://localhost:8080

#docker logs jenkins-container