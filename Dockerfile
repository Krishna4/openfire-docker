from ubuntu:12.04

MAINTAINER "https://github.com/Krishna4"

#installing Java
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
RUN apt-get -y install oracle-java7-installer 


RUN wget -O openfire.deb http://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_3.8.2_all.deb

RUN dpkg --install openfire.deb

EXPOSE 5222	
EXPOSE 5223
EXPOSE 8080
EXPOSE 8443
EXPOSE 7777
EXPOSE 80
EXPOSE 443
EXPOSE 3478 
EXPOSE 3479
EXPOSE 5229		
