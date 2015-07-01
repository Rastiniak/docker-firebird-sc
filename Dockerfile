FROM ubuntu:14.04

MAINTAINER Aleksandr Meleshkin <rastiniak09@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update > /dev/null && \
    apt-get upgrade -y > /dev/null && \
    apt-get install firebird2.5-superclassic -y > /dev/null


ADD docker /docker
RUN chmod +x /docker/*.sh
RUN /docker/setup.sh

EXPOSE 3050/tcp