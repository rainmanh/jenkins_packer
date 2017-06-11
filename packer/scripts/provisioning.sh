#!/bin/sh -eux

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install ca-certificates
echo "\n"|sudo -E apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
sudo apt-get -y install software-properties-common
#sudo apt-get -y install python-jenkins
sudo apt-get -y install python-pip libxml2-dev libxslt-dev libz-dev
sudo pip install --upgrade pip
sudo pip install lxml PyYAML stevedore jenkins-job-builder
sudo mkdir -p /opt/ansible/roles
sudo chmod 777 -R /opt/ansible/
#sudo mkdir -p /data/jenkins/log
#sudo chmod -R 755 /data/jenkins
