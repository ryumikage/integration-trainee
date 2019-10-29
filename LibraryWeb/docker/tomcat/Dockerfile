FROM tomcat:8.5.47-jdk11-openjdk
COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
EXPOSE 8080
CMD ["catalina.sh", "run"]