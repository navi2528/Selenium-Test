FROM openjdk:17-jdk-slim

ENV APP_HOME=/usr/src/app

RUN mkdir -p $APP_HOME

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

EXPOSE 8080

CMD ["java","-jar","app.jar"]
