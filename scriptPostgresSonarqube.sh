#create subnetwork
docker network create --driver bridge postgres-sonarqube
#create volumes
docker volume create postgres-data
#create and connect postgres container
docker run --name ap-postgres -e POSTGRES_PASSWORD=changeThisPWD -v postgres-data:/var/lib/postgresql/data -d postgres
docker network connect postgres-sonarqube ap-postgres
#create and connect sonarqube container
docker run --name ap-sonarqube -p 9000:9000 --network postgres-sonarqube -d sonarqube