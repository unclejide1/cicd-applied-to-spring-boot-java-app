# Start with a base image containing Java runtime
FROM openjdk:13-jdk-alpine

# Add Maintainer Info
LABEL maintainer="njusticej@gmail.com"

# Add a volume pointing to /tmp
WORKDIR /usr/app

# Make port 8080 available to the world outside this container
EXPOSE 9700


# Add the application's jar to the container
COPY ./target/cicd-applied-to-spring-boot-java-app-0.0.1-SNAPSHOT.jar .

# Run the jar file
ENTRYPOINT ["java","-jar","cicd-applied-to-spring-boot-java-app.0.0.1-SNAPSHOT.jar"]