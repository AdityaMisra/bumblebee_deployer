#!/bin/bash

docker run -p 8080:8080 \
--name=jenkins-master -d \
--env JAVA_OPTS="-Xmx1500m" \
--env JENKINS_OPTS=" --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log" \
-v /home/jenkins-data:/var/jenkins_home \
-v /home/jenkins:/var/log/jenkins \
--privileged \
jenkins
