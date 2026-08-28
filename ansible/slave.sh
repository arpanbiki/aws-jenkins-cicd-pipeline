#!/bin/bash

# Update package repository
sudo apt update -y

# Install Java JDK 21
sudo apt install openjdk-21-jdk -y

# Install Docker
sudo apt install docker.io -y

# Start Docker
sudo systemctl start docker

# Enable Docker at boot
sudo systemctl enable docker

# Add ubuntu user to Docker group
sudo usermod -aG docker ubuntu

# Verify installations
echo "===== Java Version ====="
java -version

echo "===== Docker Version ====="
docker --version

echo "===== Docker Status ====="
sudo systemctl status docker --no-pager
