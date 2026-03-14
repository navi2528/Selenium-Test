FROM tomcat:9.0-jdk17-temurin-jammy

ENV APP_HOME=/usr/src/app

WORKDIR $APP_HOME

COPY target/*.jar app.jar

EXPOSE 8080

CMD ["java","-jar","app.jar"]
