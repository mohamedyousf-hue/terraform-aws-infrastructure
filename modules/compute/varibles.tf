variable "environment" {
  description = "Environment name"
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

variable "subnet_ids" {
  description = "List of subnet IDs where EC2 instances will be created"
  type        = list(string)
}
variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}
variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "allowed_ingress_ports" {
  description = "Ports allowed for inbound traffic"
  type        = list(number)
}

variable "allowed_ingress_cidr" {
  description = "CIDR allowed to access EC2"
  type        = string
}
variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}