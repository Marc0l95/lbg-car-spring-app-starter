# Use a base image with a suitable Java Runtime Environment.
FROM openjdk:11-jre-slim

# Set environment variables (adjust these according to your needs).
ENV SPRING_PROFILES_ACTIVE=production
ENV SPRING_DATASOURCE_URL=jdbc:mysql://database:3306/your-database
ENV SPRING_DATASOURCE_USERNAME=your-db-username
ENV SPRING_DATASOURCE_PASSWORD=your-db-password

# Create a directory for your application and copy the JAR file.
WORKDIR /app
COPY target/your-spring-app.jar app.jar

# Expose the port your Spring Boot application runs on (default is 8080).
EXPOSE 8080

# Start your Spring Boot application when the container starts.
CMD ["java", "-jar", "app.jar"]
