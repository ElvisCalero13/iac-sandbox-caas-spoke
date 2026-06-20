module "rds_payments" {
  source = "data/repositories/hub-network/modules/database/rds"

  subnet_ids = module.vpc_payments.private_subnet_ids
  vpc_id = module.vpc_payments.vpc_id
}
