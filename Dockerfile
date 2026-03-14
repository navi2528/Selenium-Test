# Base image: Tomcat 9 with Java 17 (Temurin distribution for stability)
FROM tomcat:9.0-jdk17-temurin-jammy
# Remove default Tomcat example applications
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy the build artifact (WAR file) to the webapps directory as ROOT.war
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
# Expose port 8080 for the container
EXPOSE 8080
# Start the Tomcat server
CMD ["catalina.sh", "run"]
