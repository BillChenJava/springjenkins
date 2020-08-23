sudo mvn clean
sudo mvn package -DskipTests
sudo docker rmi -f springjenkins:20190628-1.0
sudo mvn Dockerfile:build
sudo docker images
