FROM maven:3.9.5-eclipse-temurin-11 AS build

WORKDIR /app
COPY pom.xml ./
COPY src ./src
RUN mvn clean package -DskipTests

FROM openjdk:11-jre-slim

WORKDIR /app
COPY --from=build /app/target/products-service-example-0.0.1-SNAPSHOT.jar /app/products-service-example-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "products-service-example-0.0.1-SNAPSHOT.jar"]
