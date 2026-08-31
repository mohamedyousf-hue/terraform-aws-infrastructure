# Terraform AWS Infrastructure Project

A modular Infrastructure as Code project built with Terraform and LocalStack.

## Architecture

Terraform
│
├── Network Module
│   ├── VPC
│   ├── Public Subnets
│   ├── Internet Gateway
│   └── Route Table
│
├── Compute Module
│   ├── EC2
│   └── Security Group
│
├── Storage Module
│   └── S3
│       ├── Versioning
│       └── Encryption
│
└── Lambda Module
    ├── IAM Role
    └── Lambda Function

## Technologies

- Terraform
- AWS
- LocalStack
- EC2
- VPC
- Subnets
- Internet Gateway
- Route Tables
- Security Groups
- S3
- IAM
- AWS Lambda

## Terraform Concepts

- Modules
- Variables
- Outputs
- Workspaces
- tfvars
- Resource Dependencies
- Infrastructure as Code

## Environments

The project supports two Terraform workspaces:

- dev
- prod

Each environment has its own `.tfvars` configuration.

## Project Structure

terraform_aws_project/
├── modules/
│   ├── network/
│   ├── compute/
│   ├── storage/
│   └── lambda/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── dev.tfvars
├── prod.tfvars
└── README.md

## Running the Project

Initialize Terraform:

terraform init

Select the environment:

terraform workspace select dev

or:

terraform workspace select prod

Plan:

terraform plan -var-file="dev.tfvars"

Apply:

terraform apply -var-file="dev.tfvars"

## LocalStack

The project uses LocalStack to simulate AWS services locally.

Required services:

- EC2
- S3
- IAM
- STS
- Lambda

## Purpose

This project was created to practice real-world Terraform concepts and AWS infrastructure automation using reusable modules and multiple environments.