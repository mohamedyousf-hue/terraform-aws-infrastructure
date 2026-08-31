# Terraform AWS Infrastructure

A modular **Infrastructure as Code (IaC)** project built with **Terraform** to provision and manage AWS infrastructure using reusable modules and multiple environments.

The project was developed and tested locally using **LocalStack** to simulate AWS services without requiring real AWS infrastructure.

---

## 🏗️ Architecture

```text
                         Terraform
                             │
              ┌──────────────┴──────────────┐
              │                             │
          Development                    Production
              │                             │
              └──────────────┬──────────────┘
                             │
                       Terraform Modules
                             │
        ┌────────────────────┼────────────────────┐
        │                    │                    │
        ▼                    ▼                    ▼
   Network Module      Compute Module      Storage Module
        │                    │                    │
        ├── VPC              ├── EC2             └── S3
        ├── Subnets          └── Security Group      ├── Versioning
        ├── Internet                                  └── Encryption
        │   Gateway
        └── Route Table
                             │
                             ▼
                       Lambda Module
                             │
                       ┌─────┴─────┐
                       │           │
                      IAM       Lambda
                       Role      Function
```

---

## 🚀 Technologies

* **Terraform**
* **AWS**
* **LocalStack**
* **Amazon VPC**
* **Amazon EC2**
* **Amazon S3**
* **AWS IAM**
* **AWS Lambda**
* **Security Groups**
* **Terraform Workspaces**

---

## 📦 Infrastructure

### Network

The Network module creates:

* VPC
* Public Subnets
* Internet Gateway
* Public Route Table
* Route Table Associations

Example architecture:

```text
VPC
│
├── Public Subnet 1
│
├── Public Subnet 2
│
├── Internet Gateway
│
└── Public Route Table
```

---

### Compute

The Compute module provisions:

* EC2 instance
* Security Group

The EC2 instance is deployed inside one of the public subnets created by the Network module.

---

### Storage

The Storage module provisions:

* S3 Bucket
* Bucket Versioning
* Server-Side Encryption

---

### Lambda

The Lambda module provisions:

* AWS Lambda Function
* IAM Role
* Lambda Basic Execution Policy

The Lambda function uses Python.

Example:

```python
def handler(event, context):
    print("Hello from Terraform Lambda!")

    return {
        "statusCode": 200,
        "body": "Lambda executed successfully"
    }
```

---

## 📁 Project Structure

```text
terraform_aws_project/
│
├── modules/
│   │
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── compute/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── storage/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── lambda/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── index.py
│       └── lambda.zip
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── dev.tfvars
├── prod.tfvars
├── .gitignore
└── README.md
```

---

## 🌍 Environments

The project supports multiple environments using **Terraform Workspaces**.

Available workspaces:

```text
dev
prod
```

Each environment uses its own `.tfvars` configuration.

### Development

```bash
terraform workspace select dev
```

Configuration:

```text
dev.tfvars
```

### Production

```bash
terraform workspace select prod
```

Configuration:

```text
prod.tfvars
```

---

## 🔧 Terraform Concepts Used

This project demonstrates several important Terraform concepts:

### Providers

The AWS provider is used to communicate with AWS-compatible services.

### Resources

Infrastructure resources are defined using Terraform resources such as:

* `aws_vpc`
* `aws_subnet`
* `aws_instance`
* `aws_security_group`
* `aws_s3_bucket`
* `aws_lambda_function`
* `aws_iam_role`

### Variables

Configuration values are separated from infrastructure code using Terraform variables.

Examples:

```text
aws_region
vpc_cidr
public_subnet_cidrs
availability_zones
ami_id
lambda_function_name
```

### Outputs

Important infrastructure information is exposed using Terraform outputs.

Examples:

```text
vpc_id
public_subnet_ids
instance_ids
instance_private_ips
lambda_function_name
lambda_function_arn
```

### Modules

The infrastructure is divided into reusable modules:

```text
network
compute
storage
lambda
```

This makes the infrastructure easier to maintain and reuse.

### Workspaces

Terraform workspaces are used to separate:

```text
dev
prod
```

---

## 🧪 LocalStack

The project uses **LocalStack** to emulate AWS services locally.

Configured services include:

```text
EC2
S3
IAM
STS
Lambda
```

This allows the infrastructure to be tested locally before working with real AWS resources.

---

## ▶️ Running the Project

### 1. Initialize Terraform

```bash
terraform init
```

---

### 2. Check Available Workspaces

```bash
terraform workspace list
```

---

### 3. Select Development Environment

```bash
terraform workspace select dev
```

---

### 4. Create Development Plan

```bash
terraform plan -var-file="dev.tfvars"
```

---

### 5. Apply Development Infrastructure

```bash
terraform apply -var-file="dev.tfvars"
```

---

### 6. Select Production Environment

```bash
terraform workspace select prod
```

---

### 7. Create Production Plan

```bash
terraform plan -var-file="prod.tfvars"
```

---

### 8. Apply Production Infrastructure

```bash
terraform apply -var-file="prod.tfvars"
```

---

## 📊 Terraform Outputs

After applying the infrastructure, Terraform provides useful information such as:

```text
vpc_id
public_subnet_ids
instance_ids
instance_private_ips
lambda_function_name
lambda_function_arn
```

Example:

```text
instance_ids = [
  "i-xxxxxxxxxxxxxxxxx"
]

instance_private_ips = [
  "10.0.1.4"
]
```

---

## 🔐 Security Considerations

The project uses Terraform variables and `.tfvars` files for environment-specific configuration.

Sensitive Terraform state files and generated files should not be committed to Git.

The `.gitignore` file excludes:

```text
.terraform/
*.tfstate
*.tfstate.*
crash.log
*.zip
```

---

## 🎯 Project Goals

The main goal of this project is to practice building cloud infrastructure using **Infrastructure as Code**.

The project focuses on:

* Automating infrastructure provisioning
* Creating reusable Terraform modules
* Managing multiple environments
* Understanding AWS networking
* Provisioning compute resources
* Managing storage
* Creating IAM roles
* Deploying Lambda functions
* Testing AWS infrastructure locally with LocalStack

---

## 📚 Skills Demonstrated

```text
Terraform
AWS
Infrastructure as Code
Terraform Modules
Terraform Variables
Terraform Outputs
Terraform Workspaces
AWS VPC
AWS EC2
AWS S3
AWS IAM
AWS Lambda
Security Groups
LocalStack
Cloud Infrastructure
Infrastructure Automation
```

---

## 👨‍💻 Author

**Mohamed Yousef**

GitHub:

https://github.com/mohamedyousf-hue

---

## ⭐ Project

If you find this project useful, feel free to star the repository.
