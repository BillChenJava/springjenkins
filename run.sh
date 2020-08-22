docker ps -a
docker stop ruleparser
docker rm -f ruleparser
docker run -d --name ruleparser --network jids --network-alias jids -p 9081:9081 -v /var/jenkins_home/workspace/java_tale/data:/data -v /etc/localtime:/etc/localtime -v /etc/timezone:/etc/timezone ruleparser:20190628-1.0
