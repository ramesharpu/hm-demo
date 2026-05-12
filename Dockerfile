FROM eclipse-temurin:17
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
VOLUME /tmp
ENTRYPOINT ["java","-jar","/app.jar"]