#!/bin/bash

#Install prerequisites
sudo yum install epel-release -y
sudo yum install java-11-openjdk -y

#Install jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y

#Access jenkins in the port 8080
sudo sed -i s/"JENKINS_PORT=8080"/"JENKINS_PORT=8090"/g /lib/systemd/system/jenkins.service

