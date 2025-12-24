#!/bin/bash
# AWS EC2 Setup Script for Amazon Linux 2 / 2023

# Update system
sudo yum update -y

# Install Git
sudo yum install git -y

# Install Docker
sudo yum install docker -y
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user

# Install Docker Compose
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose

# Verify installation
docker --version
docker compose version

echo "Setup complete! Please logout and login again for group changes to take effect."
