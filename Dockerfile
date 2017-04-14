FROM ubuntu:16.04
MAINTAINER Michael Novi <mike@revboss.com>

RUN apt-get update && apt-get install -y zip unzip curl python
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws

ENV PATH "$PATH:~/bin"
