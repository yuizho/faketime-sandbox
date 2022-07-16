FROM tomcat:10

COPY target/faketime-sandbox-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/faketime.war