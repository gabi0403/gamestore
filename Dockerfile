## Estágio de Compilação
## Uma imagem do linux para compilar o projeto
FROM ubuntu:latest AS build

## Instalar o Java
RUN apt-get update
RUN apt-get install -y openjdk-21-jdk

## Instalar o Maven
RUN apt-get install -y maven

## Copy do projeto para o container
COPY . .

## Compilar o projeto com o maven
RUN mvn clean install -DskipTests

##Execução do projeto
FROM eclipse-temurin:21-jdk-jammy

# Expor a porta 8080
EXPOSE 8080

## Copiar o arquivo JAR da compilação para o cantainer de Execução
COPY --from=build /target/gamestore-0.0.1-SNAPSHOT.jar app.jar

## Definir o comando de inicialzação do container
ENTRYPOINT [ "java", "-jar", "app.jar" ]