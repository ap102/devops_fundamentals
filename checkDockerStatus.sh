echo 'DOCKER STATUS REPORT'
docker ps -a
echo ''
docker volume ls
echo ''
docker network ls
docker network inspect postgres-sonarqube