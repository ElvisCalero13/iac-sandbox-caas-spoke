variable "s3_contactless_enable_versioning" {
  description = "Value for enable_versioning in s3_contactless."
  type        = bool
}

variable "s3_contactless_lifecycle_rules" {
  description = "Value for lifecycle_rules in s3_contactless."
  type        = any
}
