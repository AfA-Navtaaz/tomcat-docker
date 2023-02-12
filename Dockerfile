FROM tomcat:8.0

ADD ${WORKSPACE}/${JOB_NAME}/target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
