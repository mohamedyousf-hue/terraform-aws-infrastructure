environment = "prod"

aws_region = "eu-central-1"

vpc_cidr = "10.0.0.0/16"

availability_zones = [
  "eu-central-1a",
  "eu-central-1b"
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
ami_id = "ami-03cf127a"
security_group_name   = "terraform-prod-sg"
allowed_ingress_ports = [22, 80]
allowed_ingress_cidr  = "0.0.0.0/0"
bucket_name = "terraform-prod-bucket"
lambda_function_name = "terraform-prod-lambda"