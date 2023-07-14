#!/bin/bash

#Install prerequisites
sudo dnf install -y java-17-amazon-corretto-devel 

#Install jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y

#Access jenkins in the port 8090
sudo sed -i s/"JENKINS_PORT=8080"/"JENKINS_PORT=8090"/g /lib/systemd/system/jenkins.service

#Initialize jenkins
sudo systemctl enable --now jenkins

#download the jenkins cli
wget http://localhost:8090/jnlpJars/jenkins-cli.jar

#initialize jenkins cli
# sudo java -jar jenkins-cli.jar -s http://localhost:8090/ -auth <user>:<token>