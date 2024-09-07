FROM tomcat:10.1.28
VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","jar","/app.jar"]
EXPOSE 8080