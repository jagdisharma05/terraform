

This project uses Terraform to deploy the MedusaJS headless commerce platform backend on AWS ECS with Fargate. It includes a CI/CD pipeline using GitHub Actions to automate the build and deployment process.

Overview

This project consists of:
- Terraform for Infrastructure as Code (IaC).
- AWS ECS with Fargate to run the MedusaJS backend.
- GitHub Actions for Continuous Deployment (CD) to AWS.
- AWS ECR for storing the Docker images.
- AWS ALB for load balancing.

 Architecture

- AWS VPC: Networking for the infrastructure.
- AWS ECS: Container management using Fargate.
- AWS ECR: Stores the Docker image for MedusaJS.
- AWS ALB: Routes traffic to ECS.
- GitHub Actions: Automates the CI/CD pipeline.
