#delete volumes
docker volume rm postgres-data
#deletecontainers
docker rm -v ap-sonarqube
docker rm -v ap-postgres #in case postgres made any extra volumes
#delete subnetwork
docker network rm postgres-sonarqube