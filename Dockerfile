# Use a lightweight JDK image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the Spring Boot JAR into the container
COPY target/email.jar

# Expose port 8080
EXPOSE 8081

# Start the Spring Boot application
ENTRYPOINT ["java", "-jar", "email.jar"]