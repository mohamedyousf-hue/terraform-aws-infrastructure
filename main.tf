module "network" {
  source = "./modules/network"

  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  availability_zones  = var.availability_zones
  public_subnet_cidrs = var.public_subnet_cidrs
}

module "compute" {
  source = "./modules/compute"

  environment    = var.environment
  instance_count = var.instance_count
  instance_type  = var.instance_type
  subnet_ids     = module.network.public_subnet_ids
    ami_id         = var.ami_id
     vpc_id         = module.network.vpc_id
       security_group_name  = var.security_group_name
  allowed_ingress_ports = var.allowed_ingress_ports
  allowed_ingress_cidr  = var.allowed_ingress_cidr
}
module "storage" {
  source = "./modules/storage"

  bucket_name = var.bucket_name
  environment = var.environment
}
module "lambda" {
  source = "./modules/lambda"

  function_name = var.lambda_function_name
  environment   = var.environment
}