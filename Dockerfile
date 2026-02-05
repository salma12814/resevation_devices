# Étape 1 : choisir une image JDK pour builder l'application (optionnel si déjà buildé)
FROM openjdk:17-jdk-slim AS builder

# Copier le jar compilé depuis le dossier target
WORKDIR /app
COPY target/backend-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port sur lequel l'application va tourner
EXPOSE 8080

# Commande pour lancer l'application
ENTRYPOINT ["java","-jar","app.jar"]
