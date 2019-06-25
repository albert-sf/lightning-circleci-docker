FROM reiniergs/centos7-jdk-node10-browsers
LABEL maintainer "albert.li@salesforce.com"

USER root

# Install g++
RUN yum install -y gcc-c++ make
RUN yum groupinstall -y 'Development Tools'