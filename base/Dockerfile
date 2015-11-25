FROM tutum/tomcat

#install maven and git to build project
RUN apt-get update && apt-get install -y wget git-core maven

RUN mkdir /opt/aspectj && cd /opt/aspectj &&\
    wget -O aspectjweaver-1.8.2.jar http://search.maven.org/remotecontent?filepath=org/aspectj/aspectjweaver/1.8.2/aspectjweaver-1.8.2.jar
    
