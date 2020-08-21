FROM openjdk:8
ARG JAR_FILE
RUN apt-get update
RUN apt-get install vim -y
RUN mkdir /springjenkins
ADD ${JAR_FILE} /springjenkins
EXPOSE 9090
ENTRYPOINT ["java","-jar","/springjenkins/springjenkins-0.0.1-SNAPSHOT.jar"]
