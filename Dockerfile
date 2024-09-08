# Sử dụng Tomcat 10.1.28 với JDK 21.0.1
FROM tomcat:10.1.28-jdk21

# Sao chép ứng dụng WAR vào thư mục webapps của Tomcat
COPY target/demo2-1.0-SNAPSHOT.war C:/Users/PC/Downloads/apache-tomcat-10.1.28

# Mở cổng 8080
EXPOSE 8080

# Lệnh để chạy Tomcat
CMD ["catalina.sh", "run"]