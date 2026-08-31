variable "environment" {
  description = "Environment name"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
}

variable "common_tags" {
  description = "Common tags for resources"
  type        = map(string)
}
variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}
variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}
variable "security_group_name" {
  description = "Security group name"
  type        = string
}

variable "allowed_ingress_ports" {
  description = "Allowed inbound ports"
  type        = list(number)
}

variable "allowed_ingress_cidr" {
  description = "Allowed inbound CIDR"
  type        = string
}
variable "bucket_name" {
  description = "S3 bucket name"
  type        = string

}
variable "lambda_function_name" {
  description = "Lambda function name"
  type        = string
}