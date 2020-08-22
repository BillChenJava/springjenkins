FROM openjdk:8
ARG JAR_FILE
RUN apt-get update
RUN apt-get install vim -y
RUN mkdir /testproject
ADD ${JAR_FILE} /testproject
EXPOSE 9081
ENTRYPOINT ["java","-jar","/testproject/testproject-0.0.1-SNAPSHOT.jar"]
