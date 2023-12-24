# Use a base image with Maven and JDK
FROM maven:3.8.4-openjdk-17-slim

# Set the working directory in the container
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Build the project with Maven
RUN mvn clean install

# Expose the port your Spring Boot app will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "target/HotelBookingApp-0.0.1-SNAPSHOT.jar"]
