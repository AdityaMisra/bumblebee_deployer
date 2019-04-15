#!/bin/bash

docker run -p 8080:8080 \
--name=jenkins-master -d \
--env JAVA_OPTS="-Xmx1500m" \
--env JENKINS_OPTS=" --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log" \
-v /Users/aditya.misra/moneyview/hackathon/jenkins-data:/var/jenkins_home \
-v /Users/aditya.misra/moneyview/hackathon/jenkins:/var/log/jenkins \
--privileged \
jenkins
