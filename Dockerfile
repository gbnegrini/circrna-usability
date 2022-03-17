FROM ubuntu:18.04
LABEL maintainer="Guilherme Bauer Negrini <negrini.guilherme@gmail.com>"
LABEL description="This is custom Docker Image for setting up a usability evaluation environment of cirRNA identification tools"

RUN apt update -y && \
    apt-get -y install software-properties-common && \
    apt-get -y install wget && \
    apt-get -y install git && \
    apt-get -y install curl &&\
    apt-get -y install vim && \
    apt-get -y install build-essential && \
    apt-get -y install pkg-config && \
    apt-get -y install unzip && \
    apt-get -y install zlib1g-dev && \
    apt-get -y install libncurses5-dev libncursesw5-dev && \
    apt clean

WORKDIR /circrna-usability
