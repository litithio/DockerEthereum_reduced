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

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 10.21.0

WORKDIR $NVM_DIR

RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash && \
    . $NVM_DIR/nvm.sh && \
    nvm install $NODE_VERSION && \
    nvm alias default $NODE_VERSION && \
    nvm use default

ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
RUN npm install pm2@latest -g

WORKDIR /home
