mvn clean
mvn package -DskipTests
docker rmi -f springjenkins:20190628-1.0
mvn Dockerfile:build
docker images
