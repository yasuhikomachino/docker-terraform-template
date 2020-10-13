FROM python:3.8.5

ARG aws_cli_version="2.0.56"
ARG terraform_version="0.13.4"
ARG packer_version="1.6.4"

WORKDIR /tmp

## Install AWS CLI
RUN apt-get update && apt-get install less
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${aws_cli_version}.zip" -o "awscli.zip" && \
    unzip awscli.zip && \
    ./aws/install

## Install Terraform
RUN curl "https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip" -o "terraform.zip" && \
    unzip terraform.zip && \
    mv terraform /usr/local/bin/

## Install Packer
RUN curl "https://releases.hashicorp.com/packer/${packer_version}/packer_${packer_version}_linux_amd64.zip" -o "packer.zip" && \
    unzip packer.zip && \
    mv packer /usr/local/bin/

WORKDIR /workspace