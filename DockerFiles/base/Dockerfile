FROM ubuntu:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
ENV LANG C.UTF-8
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get update && apt full-upgrade -y && \
    apt-get install -y -q --no-install-recommends \
                        python3-pip \
                        nano \
                        software-properties-common \
                        build-essential \
                        curl \
                        apt-transport-https \
                        ca-certificates \
                        htop \
                        git \
                        libssl-dev \
                        wget \
                        telnet \
                        netcat \
			            python-setuptools \
                        net-tools


WORKDIR /home
