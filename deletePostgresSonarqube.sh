#deletecontainers
docker rm -v -f ap-sonarqube
docker rm -v -f ap-postgres #in case postgres made any extra volumes
#delete volumes
docker volume rm postgres-data
#delete subnetwork
docker network rm postgres-sonarqube