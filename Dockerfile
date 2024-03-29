FROM alpine
RUN apk add wget && apk add openjdk8
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.59/bin/apache-tomcat-9.0.59.tar.gz 
RUN tar -xzvf apache-tomcat-9.0.59.tar.gz -C /usr/local/
ADD ./target/mywebapp.war /usr/local/apache-tomcat-9.0.59/webapps/
EXPOSE 8080
CMD ["/usr/local/apache-tomcat-9.0.58/bin/catalina.sh", "run"]
