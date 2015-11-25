FROM nabilblk/tomcat

RUN rm -rf /spring-petclinic

RUN rm -rf /tomcat/webapps/*

ADD ./setenv.sh /tomcat/bin/setenv.sh

# Pull petclinic
RUN git clone https://github.com/stagemonitor/spring-petclinic.git

# Build petclinic
WORKDIR /spring-petclinic
RUN rm src/main/resources/stagemonitor.properties

ADD ./stagemonitor.properties /spring-petclinic/src/main/resources/stagemonitor.properties

RUN mvn package &&\
    mv /spring-petclinic/target/petclinic.war /tomcat/webapps/petclinic.war &&\
    rm -rf /spring-petclinic
