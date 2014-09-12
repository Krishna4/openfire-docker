from ubuntu:12.04

MAINTAINER "https://github.com/Krishna4"

#installing Java
RUN apt-get update && apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true |  debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
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
