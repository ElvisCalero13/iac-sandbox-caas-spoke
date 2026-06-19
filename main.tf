module "ecs_service_payments" {
  source = "data/repositories/hub-network/modules/compute/ecs-service"

  container_image = var.container_image
  subnet_ids = module.vpc_payments.private_subnet_ids
  vpc_id = module.vpc_payments.vpc_id
}
