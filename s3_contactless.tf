module "s3_contactless" {
  source = "git::https://github.com/ElvisCalero13/iac-sandbox-module-s3.git?ref=v1.1.0"

  enable_versioning = var.s3_contactless_enable_versioning
  lifecycle_rules   = var.s3_contactless_lifecycle_rules
}
