From tomcat:8-jre8 

# Maintainer 
# MAINTAINER "youremailaddress" 

# Copy to images tomcat path 
#ADD web.xml /usr/local/tomcat/conf/ 
#ADD obclient.properties /etc/ 
#ADD WebClient.properties /etc/ 
#ADD yourwarfile.war /usr/local/tomcat/webapps/ 
# Adding context file to allow access to admin console remotely
#ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

# Adding tomcat user file with custom password
#ADD tomcat-users.xml /usr/local/tomcat/conf/

# Adding Spring Boot WAR
COPY target/Spring-Boot-Hello-App-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

# Adding shell script to execute DB environment file
#ADD env.sh /usr/local/bin/env.sh
#RUN chmod +x /usr/local/bin/env.sh
#CMD ["/usr/local/bin/env.sh", "run"]

EXPOSE 8080
CMD ["catalina.sh", "run"]
