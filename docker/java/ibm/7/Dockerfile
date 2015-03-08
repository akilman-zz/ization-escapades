# vim:set ft=dockerfile:
FROM ubuntu 
MAINTAINER Anthony Kilman "anthony.kilman@gmail.com"

RUN apt-get -qq update
RUN apt-get -y install vim git curl 

ADD ibm-java-sdk-7.1-2.10-x86_64-archive.bin /usr/lib/jvm/ibm-java-sdk-7.1-2.10-x86_64-archive.bin
ADD installer-input /tmp/installer-input

RUN chmod a+x /usr/lib/jvm/ibm-java-sdk-7.1-2.10-x86_64-archive.bin
RUN /usr/lib/jvm/ibm-java-sdk-7.1-2.10-x86_64-archive.bin < /tmp/installer-input
RUN rm /usr/lib/jvm/ibm-java-sdk-7.1-2.10-x86_64-archive.bin

RUN update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/ibm-java-x86_64-71/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/ibm-java-x86_64-71/bin/javac" 1 
