#create subnetwork
docker network create --driver bridge postgres-sonarqube
#create volumes
docker volume create postgres-data
#create containers