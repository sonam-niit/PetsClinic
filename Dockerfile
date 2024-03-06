FROM openjdk:17

WORKDIR /app

COPY target/*.jar /app/app.jar

EXPOSE 9090

#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]