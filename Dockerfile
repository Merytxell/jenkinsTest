# Utiliser une image de base Java
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR de l'appli dans le conteneur
COPY target/projetTest.jar /app/projetTest.jar

# Exposer le port utilisé par votre application Spring Boot
EXPOSE 8080

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "projetTest.jar"]
