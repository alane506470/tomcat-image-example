FROM java

MAINTAINER alan

RUN  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50
RUN apt-get update
 
RUN apt-get install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.99/bin/apache-tomcat-7.0.99.tar.gz

RUN tar zxvf apache-tomcat-7.0.99.tar.gz



CMD ["/apache-tomcat-7.0.99/bin/catalina.sh", "run"]



EXPOSE 8080
