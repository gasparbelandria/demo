#!/usr/bin/env bash

sudo yum -y update
sudo yum -y install wget

# Install Git
sudo yum -y install git

# Install Node js
sudo yum install -y epel-release
sudo yum install -y nodejs
sudo yum install -y npm

# Remove Old Docker version
sudo yum remove docker \
                  docker-common \
                  container-selinux \
                  docker-selinux \
                  docker-engine

# Install required packages required by the devicemapper storage driver.
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Stable repo
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Update the yum package index.
sudo yum makecache fast

# Install the latest version of Docker CE, or go to the next step to install a specific version.
sudo yum install -y docker-ce-17.03.0.ce-1.el7.centos

# Start Docker
sudo systemctl start docker

