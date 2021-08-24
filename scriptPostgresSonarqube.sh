#create subnetwork
docker network create --driver bridge postgres-sonarqube
#create volumes
docker volume create postgres-data
#create containers
docker run --name ap-postgres -e POSTGRES_PASSWORD=changeThisPWD -d postgres -v postgres-data:/var/lib/postgresql/data
#connect containers
docker network connect postgres-sonarqube ap-postgres