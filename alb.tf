module "alb_payments" {
  source = "data/repositories/hub-network/modules/network/alb"

  vpc_id = module.vpc_payments.vpc_id
}
