# Sử dụng Tomcat 10.1.28 với JDK 21.0.1
FROM tomcat:10.1.28-jdk21

COPY target/demo2-1.0-SNAPSHOT.war C:/Users/PC/Downloads/apache-tomcat-10.1.28

EXPOSE 8080

CMD ["catalina.sh", "run"]


