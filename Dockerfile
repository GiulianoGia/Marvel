FROM maven:3.8.1-openjdk-17-slim AS builder
COPY ./src .
COPY ./pom.xml .
RUN mvn clean package

FROM openjdk:17

WORKDIR /app
COPY --from=builder target/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]