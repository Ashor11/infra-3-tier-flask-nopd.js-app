# 3-Tier Flask Application on AWS EKS with Terraform

This project provisions a 3-tier architecture for a Flask application on AWS using EKS (Elastic Kubernetes Service) and Terraform. It includes automated infrastructure provisioning, networking, and CI/CD integration with Azure Pipelines.
![1](https://github.com/user-attachments/assets/ceedaee3-b5fb-4e98-a4f4-d6ff6a98555b)
## Project Structure

- **main.tf**: Terraform provider configuration.
- **backend.tf**: AWS provider setup.
- **variable.tf**: Input variables for the infrastructure.
- **networke.tf**: VPC, subnets, security groups, and networking resources.
- **eks-aws.tf**: EKS cluster and node group resources.
- **Azure-pipeline.yaml**: Azure DevOps pipeline for CI/CD.

## Features

- Creates a VPC with public subnets across 3 Availability Zones.
- Provisions an EKS cluster and managed node group.
- Configures security groups for EKS.
- Sets up internet gateway and routing.
- Automated deployment pipeline using Azure DevOps.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS account with necessary IAM permissions
- Azure DevOps account for CI/CD

## Usage

1. **Clone the repository**
   ```sh
   git clone <repo-url>


This project provisions a 3-tier architecture for a Flask application on AWS using EKS (Elastic Kubernetes Service) and Terraform. It includes automated infrastructure provisioning, networking, and CI/CD integration with Azure Pipelines.

## Project Structure

- **main.tf**: Terraform provider configuration.
- **backend.tf**: AWS provider setup.
- **variable.tf**: Input variables for the infrastructure.
- **networke.tf**: VPC, subnets, security groups, and networking resources.
- **eks-aws.tf**: EKS cluster and node group resources.
- **Azure-pipeline.yaml**: Azure DevOps pipeline for CI/CD.

## Features

- Creates a VPC with public subnets across 3 Availability Zones.
- Provisions an EKS cluster and managed node group.
- Configures security groups for EKS.
- Sets up internet gateway and routing.
- Automated deployment pipeline using Azure DevOps.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS account with necessary IAM permissions
- Azure DevOps account for CI/CD

## Usage

1. **Clone the repository**
   ```sh
   git clone <repo-url>
   cd infra-3tier-flask-nopd.js-app
   ```
2. **CI/CD Pipeline**
   - The [Azure-pipeline.yaml](Azure-pipeline.yaml) file automates provisioning and EKS configuration.
   - Configure your secrets in Azure DevOps as a variable group named `my-secrets`.

## Variables

See [variable.tf](variable.tf) for all configurable variables, including:
- `region`
- `cluster_name`
- `vpc_cidr`
- `public_subnets`
- `private_subnets`

## Networking

- VPC and 3 public subnets for high availability.
- Internet gateway and route tables for public access.
- Security group allows HTTP, HTTPS, and EKS node communication.

## EKS

- EKS cluster with version 1.29.
- Managed node group with configurable instance types and scaling.
