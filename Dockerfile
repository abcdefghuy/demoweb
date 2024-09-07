FROM maven:3.9.5-openjdk-21 As build
COPY . .
RUN mvn clean package -DskipTests

From  openjdk:24-jdk-slim

Copy  --from=build  /target/demo2-1.0-SNAPSHOT.war demo2.war


Expose 8080

Entrypoint["java", "-war","demo2.war"]