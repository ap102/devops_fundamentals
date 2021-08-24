#create subnetwork
docker network create --driver bridge postgres-sonarqube
#create volumes
docker volume create postgres-data
docker volume create sonarqube-data
docker volume create jenkins-workspace
docker volume create nexus3-data
#create and connect postgres container
docker run --name ap-postgres -e POSTGRES_PASSWORD=changeThisPWD -p 5432:5432 -v postgres-data:/var/lib/postgresql/data -d postgres
docker network connect postgres-sonarqube ap-postgres
#create and connect sonarqube container
docker run --name ap-sonarqube -p 9000:9000 --network postgres-sonarqube -d sonarqube
#create and connect jenkins container
docker run --name ap-jenkins -p 8080:8080 -p 50000:50000 -v jenkins-workspace:/var/jenkins_home --network postgres-sonarqube -d jenkins/jenkins
#create and connect sonatype/nexus container
docker run --name ap-nexus3 -p 8081:8081 --network postgres-sonarqube -d sonatype/nexus3