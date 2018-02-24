#!/bin/bash

docker run \
  --name jenkins \
  -u root \
  --rm \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkinsci/blueocean

sleep 15
export jenkins=`docker ps -aqf "name=jenkins"`

echo
echo "Initial Admin Password:"
docker exec -it $jenkins cat /var/jenkins_home/secrets/initialAdminPassword
echo
echo "http://localhost:8080"
echo
