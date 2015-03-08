# vim:set ft=dockerfile:
FROM ubuntu 
MAINTAINER Anthony Kilman "anthony.kilman@gmail.com"

RUN apt-get -qq update
RUN apt-get -y install vim git curl 

# IBM JVM 5 only runs on 32-bit arch
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get -y install libc6:i386 libncurses5:i386 libstdc++6:i386

ADD ibm-java2-sdk-5.0-16.9-linux-i386.tgz /usr/lib/jvm/
#ADD ibm-java-sdk-6.0-16.3-linux-x86_64.bin /usr/lib/jvm/ibm-java-sdk-6.0-16.3-linux-x86_64.bin
#ADD ibm-java-sdk-7.1-2.10-x86_64-archive.bin /usr/lib/jvm/ibm-java-sdk-7.1-2.10-x86_64-archive.bin 
#ADD ibm-java-x86_64-sdk-8.0-0.0.bin /usr/lib/jvm/ibm-java-x86_64-sdk-8.0-0.0.bin 

RUN update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/ibm-java2-i386-50/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/ibm-java2-i386-50/bin/javac" 1 
