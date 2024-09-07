FROM tomcat:10.1.28
RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/* demo2-1.0-SNAPSHOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]