# vim:set ft=dockerfile:
FROM ubuntu 
MAINTAINER Anthony Kilman "anthony.kilman@gmail.com"

RUN apt-get -qq update
RUN apt-get -y install vim git curl 

# Oracle Java 5 only runs on 32-bit
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get -y install libc6:i386 libncurses5:i386 libstdc++6:i386

ADD jdk-1_5_0_22-linux-amd64.bin /usr/lib/jvm/
ADD installer-input /tmp/installer-input

RUN chmod a+x /usr/lib/jvm/jdk-1_5_0_22-linux-amd64.bin
RUN /usr/lib/jvm/jdk-1_5_0_22-linux-amd64.bin < /tmp/installer-input
RUN ls /usr/lib/jvm
#RUN rm /usr/lib/jvm/jdk-1_5_0_22-linux-amd64.bin

RUN update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.5.0_22/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.5.0_22/bin/javac" 1 
