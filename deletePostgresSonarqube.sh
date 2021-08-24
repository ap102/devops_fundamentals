#delete volumes
docker volume rm postgres-data
#deletecontainers
docker rm -v ap-postgres #-v is redundant with volume rm command
#delete subnetwork
docker network rm postgres-sonarqube