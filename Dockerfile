FROM maven:3.9.5-sapmachine-17 AS MAVEN_BUILD
COPY ./ ./
RUN mvn clean package
FROM eclipse-temurin:17-jdk-alpine
COPY --from=MAVEN_BUILD target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080/tcp