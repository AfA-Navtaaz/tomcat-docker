FROM tomcat:8.0

COPY ./Tomcat-docker/target/dependency/webrunner-app.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
