FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN

COPY pom.xml /tmp/
COPY src /tmp/src/

WORKDIR /tmp/
RUN mvn clean package

FROM tomcat:9.0-jre8-alpine AS TOMCAT_SERVER

COPY --from=MAVEN_TOOL_CHAIN /tmp/target/BookstoreApp-1.0-SNAPSHOT.war $TOMCAT_SERVER/usr/local/tomcat/webapps/
COPY ./conf /usr/local/tomcat/conf/

EXPOSE 8080

CMD ["catalina.sh", "run"]
