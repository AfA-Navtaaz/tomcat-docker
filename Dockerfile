FROM tomcat:8.0

COPY ./target/dependency/webapp-runner.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
