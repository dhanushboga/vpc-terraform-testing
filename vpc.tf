module "vpc" {
  # source = "../terraform-module-vpc"
  source = "git::https://github.com/dhanushboga/terraform-module-vpc.git?ref=main"
  vpc_cidr = var.vpc_cidr
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr
  is_peering_required = true
}