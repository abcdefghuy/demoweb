# Sử dụng Tomcat 10.1.28 với JDK 21.0.1
FROM tomcat:10.1.28-jdk21

COPY target/demo2-1.0-SNAPSHOT.war /home/user/.local/tmp/buildkit-mount1819889252/target

EXPOSE 8080

CMD ["catalina.sh", "run"]


