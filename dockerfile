FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
# Spring PetClinic compiles into a JAR prefixed with "spring-petclinic"
COPY target/spring-petclinic-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
