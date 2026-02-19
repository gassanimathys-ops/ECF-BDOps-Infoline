# Image Java officielle compatible Spring Boot
FROM eclipse-temurin:17-jdk-alpine

# Copier le jar compilé
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port 8080
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java", "-jar", "/app.jar"]