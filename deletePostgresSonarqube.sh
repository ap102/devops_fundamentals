#deletecontainers
docker rm -v -f ap-sonarqube
docker rm -v -f ap-postgres #in case postgres made any extra volumes
docker rm -v -f ap-jenkins
docker rm -v -f ap-nexus3
#delete volumes
docker volume rm postgres-data
docker volume rm sonarqube-data
docker volume rm sonarqube-logs
docker volume rm sonarqube-extensions
docker volume rm jenkins-workspace
docker volume rm nexus3-data
#delete subnetwork
docker network rm postgres-sonarqube