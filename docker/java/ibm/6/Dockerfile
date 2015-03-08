# vim:set ft=dockerfile:
FROM ubuntu 
MAINTAINER Anthony Kilman "anthony.kilman@gmail.com"

RUN apt-get -qq update
RUN apt-get -y install vim git curl 

ADD ibm-java-sdk-6.0-16.3-linux-x86_64.bin /usr/lib/jvm/ibm-java-sdk-6.0-16.3-linux-x86_64.bin
ADD installer-input /tmp/installer-input

RUN chmod a+x /usr/lib/jvm/ibm-java-sdk-6.0-16.3-linux-x86_64.bin
RUN /usr/lib/jvm/ibm-java-sdk-6.0-16.3-linux-x86_64.bin < /tmp/installer-input

RUN update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/ibm-java-x86_64-60/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/ibm-java-x86_64-60/bin/javac" 1 
