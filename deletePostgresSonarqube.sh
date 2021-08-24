#delete volumes
docker volume rm postgres-data
#deletecontainers
docker rm -v -f ap-sonarqube
docker rm -v -f ap-postgres #in case postgres made any extra volumes
#delete subnetwork
docker network rm postgres-sonarqube