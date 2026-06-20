module "vpc_payments" {
  source = "data/repositories/hub-network/modules/network/vpc"

  cidr_block = var.cidr_block
  environment = var.environment
}
