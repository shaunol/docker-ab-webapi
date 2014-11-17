# Base OS
FROM shaunol/centos-mono
MAINTAINER shaunol

# Env setup
EXPOSE 9200
ENV HOME /root
WORKDIR /root

# Easy way to get apache benchmark
RUN yum install -y httpd-tools

ADD ab-webapi.tar /root/

ENTRYPOINT ["mono", "/root/ab-webapi/ab-webapi.exe"]