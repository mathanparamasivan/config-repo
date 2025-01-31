# Use an official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Cloud server JAR file into the container
COPY target/config-0.0.1-SNAPSHOT.jar /app/spring-cloud-server.jar

# Expose the port the Spring Cloud server will run on
EXPOSE 8888

# Command to run the Spring Cloud Server
ENTRYPOINT ["java", "-jar", "spring-cloud-server.jar"]
