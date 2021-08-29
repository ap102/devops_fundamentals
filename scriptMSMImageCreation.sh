clear
docker build . -t msm-anotherkey
docker run --name msm-container -p 3000:3000 --network postgres-sonarqube -d -v /home/luzer/repos/keys:/keys/  msm-anotherkey
