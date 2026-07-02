module "s3_contactless" {
  source = "git::https://github.com/ElvisCalero13/iac-sandbox-module-s3.git?ref=v1.1.0"

  lifecycle_rules = var.s3_contactless_lifecycle_rules
}
