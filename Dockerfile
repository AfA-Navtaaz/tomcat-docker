FROM tomcat:8.0

RUN cp -a ./target/dependency /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
