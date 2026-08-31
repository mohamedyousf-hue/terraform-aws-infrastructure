environment = "dev"

aws_region = "us-east-1"

vpc_cidr = "10.0.0.0/16"

availability_zones = [
  "us-east-1a",
  "us-east-1b"
]

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

instance_count = 1

instance_type = "t2.micro"

common_tags = {
  Project = "terraform-aws-project"
  Owner   = "Mohamed"
}
security_group_name   = "terraform-dev-sg"
allowed_ingress_ports = [22, 80]
allowed_ingress_cidr  = "0.0.0.0/0"
bucket_name = "terraform-dev-bucket"
lambda_function_name = "terraform-dev-lambda"