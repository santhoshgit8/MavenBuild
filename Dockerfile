FROM tomcat:8
COPY target/java-example.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8081
CMD ["catalina.sh", "run"]

FROM Harnesdelgate:23.10.81202
RUN cd /opt/harness-delegate/1.0.81010/ &
    mv delegate.jar delegate-testdate.jar &
    mv /tmp/delegate.jar /opt/harness-delegate/1.0.81010/. &
CMD ["/opt/harness-delegate/stop.sh", "run"] 
RUN sleep 60;"/opt/harness-delegate/start.sh"



    
    




