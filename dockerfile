FROM openjdk:11-jre-slim

WORKDIR /app

COPY target/products-service-example-0.0.1-SNAPSHOT.jar /app/products-service-example-0.0.1-SNAPSHOT.jar

EXPOSE 8080

CMD ["java", "-jar", "products-service-example-0.0.1-SNAPSHOT.jar"]
