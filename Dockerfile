#FROM tomcat:latest
#WORKDIR /usr/local/tomcat/webapps
#COPY ./target/ashwin-web.war /usr/local/tomcat/webapps/ashwin-web.war
#EXPOSE 8080
#CMD ["startup.sh", "run"]

FROM openjdk:8
#WORKDIR /root/heelo-world

EXPOSE 8080
#VOLUME /temp
#COPY target/ashwin-web.jar /root/hello-world
ADD target/ashwin-web.jar ashwin-web.jar
ENTRYPOINT ["java","-jar","/ashwin-web.jar"]

