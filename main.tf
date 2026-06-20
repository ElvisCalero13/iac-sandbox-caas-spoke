module "vpc_payments" {
  source = "data/repositories/hub-network/modules/network/vpc"

  cidr_block = var.cidr_block
  environment = var.environment
}

module "ecs_service_payments" {
  source = "data/repositories/hub-network/modules/compute/ecs-service"

  container_image = var.container_image
  subnet_ids = module.vpc_payments.private_subnet_ids
  vpc_id = module.vpc_payments.vpc_id
}

module "rds_payments" {
  source = "data/repositories/hub-network/modules/database/rds"

  subnet_ids = module.vpc_payments.private_subnet_ids
  vpc_id = module.vpc_payments.vpc_id
}

module "alb_payments" {
  source = "data/repositories/hub-network/modules/network/alb"

  vpc_id = module.vpc_payments.vpc_id
}
