#!/bin/bash
echo "Hello Welcome is Devops World..............!"
sleep 3
sudo apt-get update 
sleep 3
echo "OpenJDK Install..............!" 
sudo apt install fontconfig openjdk-17-jre -y
sleep 3
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
sleep 3 
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sleep 3
sudo apt update
sleep 3
echo "Jenkins Install..............!" 
sudo apt-get install -y jenkins 
sleep 3
sudo systemctl start jenkins
sleep 3 
sudo systemctl status jenkins
sleep 4
echo "Installing docker part ..................................!"
sudo apt update
sleep 2
echo "docker.io docker-compose-v2 Install..............!" 
sudo apt install docker.io docker-compose-v2 -y
sleep 2
sudo usermod -aG docker jenkins  //add jenkins user to dockergroup
sleep 2 
sudo newgrp docker
sleep 2
sudo systemctl restart jenkins
sleep 2 
sudo systemctl status docker