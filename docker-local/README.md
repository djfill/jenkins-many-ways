Jenkins running on local machine using Docker

Prerequisites:
Install docker

Start Jenkins
sh start-jenkins.sh

Open Jenkins in browser
http:localhost:8080

Copy the Initial Admin Password from the terminal and paste into the browser when prompted

SSH onto Jenkins box
docker exec -it jenkins /bin/bash

Stop and remove the Jenkins instance
sh stop-jenkins.sh

