# Sử dụng Tomcat 10.1.28 với JDK 21.0.1
FROM tomcat:10.1.28-jdk21

COPY ROOT.war /home/user/.local/tmp/buildkit-mount1819889252/target

ENV PORT 8080

EXPOSE 8080

CMD ["catalina.sh", "run"]