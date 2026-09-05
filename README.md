# CI/CD with Kubernetes

A hands-on DevOps project demonstrating a manual CI/CD workflow using Node.js, Docker, and Kubernetes.

## Project Overview

This project demonstrates how to:

- Build a Node.js web application
- Containerize the application using Docker
- Deploy the application to Kubernetes
- Use Kubernetes Deployments and Services
- Perform rolling updates
- Verify application health
- Scale the application
- Perform rollback operations
- Understand the manual CI/CD workflow

## Technologies Used

- Node.js
- Express.js
- Docker
- Kubernetes
- Minikube
- kubectl
- Bash
- Git & GitHub

## Project Structure

```text
cicd-k8s-project/
├── app/
│   ├── Dockerfile
│   ├── package.json
│   └── server.js
├── k8s/
│   ├── deployment.yaml
│   ├── namespace.yaml
│   └── service.yaml
├── cleanup.sh
├── manual-cicd.sh
├── .gitignore
└── README.md
