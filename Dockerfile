#FROM tomcat:8
#COPY target/java-example.war /usr/local/tomcat/webapps/ROOT.war
#EXPOSE 8081
#CMD ["catalina.sh", "run"]
FROM openjdk:11-jre-slim
ADD ./target/java-example.war /usr/src/java-example.war
WORKDIR usr/src
ENTRYPOINT ["java","-jar", "java-example.war"]

