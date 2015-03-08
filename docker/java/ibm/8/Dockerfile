# vim:set ft=dockerfile:
FROM ubuntu 
MAINTAINER Anthony Kilman "anthony.kilman@gmail.com"

RUN apt-get -qq update
RUN apt-get -y install vim git curl 

ADD ibm-java-x86_64-sdk-8.0-0.0.bin /usr/lib/jvm/ibm-java-x86_64-sdk-8.0-0.0.bin
ADD installer-input /tmp/installer-input

RUN chmod a+x /usr/lib/jvm/ibm-java-x86_64-sdk-8.0-0.0.bin
RUN /usr/lib/jvm/ibm-java-x86_64-sdk-8.0-0.0.bin < /tmp/installer-input
RUN rm /usr/lib/jvm/ibm-java-x86_64-sdk-8.0-0.0.bin

RUN update-alternatives --install "/usr/bin/java" "java" "/opt/ibm/java-x86_64-80/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/opt/ibm/java-x86_64-80/bin/javac" 1 
