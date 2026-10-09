CI/CD with Docker And Kubernetes

A hands-on DevOps project demonstrating application containerization, automated CI/CD using GitHub Actions, Docker image publishing, Kubernetes deployment, and AWS infrastructure provisioning using Terraform.

Project Overview

This project demonstrates an end-to-end DevOps workflow, combining automated application delivery with infrastructure as code.

Key Features

Developed a Node.js web application using Express.js.

Containerized the application using Docker.

Created a GitHub Actions CI/CD pipeline to automate Docker image building and publishing.

Built Docker images and pushed them to Docker Hub through GitHub Actions.

Deployed the application to Kubernetes using Deployments and Services.

Performed rolling updates, application health checks, scaling, and rollback operations.

Provisioned AWS infrastructure using Terraform.

Organized Terraform configurations using reusable modules and environment-specific configurations.

Managed source code and project configurations using Git and GitHub.

Technologies Used

Category

Technologies

Application

Node.js, Express.js

Containerization

Docker, Docker Hub

CI/CD

GitHub Actions

Orchestration

Kubernetes, Minikube, kubectl

Infrastructure as Code

Terraform

Cloud

AWS

Scripting

Bash

Version Control

Git, GitHub

CI/CD Workflow

Push application code to the GitHub repository.

GitHub Actions triggers the configured workflow.

The pipeline builds the Docker image.

The pipeline authenticates with Docker Hub using GitHub Secrets.

The Docker image is pushed to Docker Hub.

The image can be used for deployment to Kubernetes.

Workflow: GitHub → GitHub Actions → Docker Build → Docker Hub → Kubernetes

Note: The configured pipeline automates image building and publishing. Kubernetes deployment and operations can be performed separately using kubectl unless deployment steps are added to the workflow.

Terraform and AWS Infrastructure

Terraform is used to provision and manage AWS infrastructure through code.

Key activities include:

Defining AWS resources using Terraform configuration files.

Organizing infrastructure into reusable modules.

Maintaining environment-specific configurations.

Initializing Terraform, reviewing execution plans, and applying infrastructure changes.

Managing Terraform state and remote backend configuration where configured.

Kubernetes Deployment and Operations

The project also covers hands-on Kubernetes administration using Minikube and kubectl.

Creating Kubernetes Deployments and Services.

Managing application replicas and scaling.

Performing rolling updates.

Verifying application health and availability.

Rolling back deployments when required.

Cleaning up Kubernetes resources after testing.

Project Structure

cicd-k8s-project/
├── .github/
│   └── workflows/
│       └── CD-Pipeline.yml
├── app/
│   ├── Dockerfile
│   ├── package.json
│   └── server.js
├── k8s/
│   ├── deployment.yaml
│   ├── namespace.yaml
│   └── service.yaml
├── iac/
│   └── 003/
│       ├── environments/
│       │   └── dev/
│       │       ├── main.tf
│       │       ├── variables.tf
│       │       └── outputs.tf
│       └── modules/
├── cleanup.sh
├── manual-cicd.sh
├── .gitignore
└── README.md

The structure above is illustrative. Keep the actual filenames and paths from your repository, including all workflow files and Terraform configuration files.

Getting Started

Prerequisites

Git and GitHub

Docker

Node.js and npm

Minikube

kubectl

Terraform

An AWS account and appropriately configured credentials for AWS provisioning

Run the Application Locally

cd app
npm install
npm start

Run the Kubernetes Environment

Start Minikube:

minikube start

Apply the Kubernetes manifests:

kubectl apply -f k8s/

Verify the deployment:

kubectl get pods
kubectl get deployments
kubectl get services

Configure the CI/CD Pipeline

Configure your Docker Hub credentials as GitHub repository secrets.

Add the secrets required by your workflow, such as DOCKERHUB_USERNAME and DOCKERHUB_TOKEN.

Push your changes to the repository.

Open the Actions tab on GitHub to review workflow execution.

Verify that the Docker image is available in Docker Hub.

Run Terraform

Navigate to the appropriate Terraform environment directory:

cd iac/003/environments/dev
terraform init
terraform validate
terraform plan
terraform apply

Review the plan before applying changes. Configure AWS credentials and the Terraform backend according to your actual configuration.

Important: Use terraform destroy only when you intentionally want to remove the managed resources and have checked the impact.

Learning Outcomes

Through this project, I gained practical experience in:

Building and publishing Docker images through automated CI/CD.

Configuring GitHub Actions workflows and repository secrets.

Deploying and managing applications on Kubernetes.

Performing deployment updates, scaling, health verification, and rollback.

Provisioning AWS infrastructure using Terraform.

Understanding the relationship between CI/CD, containers, orchestration, and infrastructure as code.

Author

Kunal Mahakalkar

GitHub: https://github.com/Kunal-Mahakalkar

LinkedIn: https://www.linkedin.com/in/kunal-mahakalkar-b666a933