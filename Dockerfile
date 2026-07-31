FROM maven:3.8.3-openjdk-17 AS builder
WORKDIR /app
COPY . /app
RUN mvn clean install -DskipTests=true

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=builder /app/target/*.jar /app/target/expenseapp.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/target/expenseapp.jar"]
