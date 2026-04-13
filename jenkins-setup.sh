#!/bin/bash

# Update package index
sudo apt-get update

# Install Docker
sudo apt-get install -y docker.io

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

# Install Kubernetes tools (kubectl)
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Install Minikube for Kubernetes local setup
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Start Minikube
minikube start

# Print installed versions
docker --version
kubectl version --client
minikube version

# Print message
echo "Jenkins setup script completed. Docker and Kubernetes environment has been set up successfully."