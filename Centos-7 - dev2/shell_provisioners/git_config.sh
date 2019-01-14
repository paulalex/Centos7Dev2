#!/bin/bash

# Create git key
cd /home/dev
ssh-keygen -t rsa -f ~/.ssh/gitlab_id_rsa -q -N ""
ssh-add ~/.ssh/gitlab_id_rsa

# Install latest version of git 2.x
sudo yum remove git
sudo yum -y install http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm
sudo yum -y install git

# Configure git config
git config --global user.name "paul.ockleford@nhs.net" # $GIT_USER
git config --global user.email "paul.ockleford@nhs.net" # $GIT_EMAIL
