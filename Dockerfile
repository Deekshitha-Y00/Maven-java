# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Copy JAR file to the container
COPY target/project1-0.0.1-SNAPSHOT.jar app.jar

# Expose port (optional if app runs on a port)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
