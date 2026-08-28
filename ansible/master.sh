#!/bin/bash

# Update package repository
sudo apt update -y

# Install Java JDK 21 and Fontconfig
sudo apt install fontconfig openjdk-21-jdk -y

# Install Docker
sudo apt install docker.io -y

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Install Python
sudo apt install python3 python3-pip -y

# Install Ansible
sudo apt install ansible -y

# Add Jenkins repository key
sudo mkdir -p /etc/apt/keyrings

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

# Add Jenkins repository
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update repositories
sudo apt update -y

# Install Jenkins
sudo apt install jenkins -y

# Start and enable Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Verify installations
echo "===== Java ====="
java -version

echo "===== Python ====="
python3 --version

echo "===== Ansible ====="
ansible --version

echo "===== Docker ====="
docker --version

echo "===== Jenkins ====="
sudo systemctl status jenkins --no-pager          
