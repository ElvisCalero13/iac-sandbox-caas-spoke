variable "s3_contactless_lifecycle_rules" {
  description = "[Optional] List of lifecycle rules to transition or expire objects."
  type = list(object({
    rule_name                            = string
    transition_class                     = optional(string, null)
    transition_days                      = optional(number, null)
    filter_prefix                        = optional(string, null)
    filter_tags                          = optional(map(string), null)
    expiration_days                      = optional(number, null)
    incomplete_multipart_expiration_days = optional(number, null)
    noncurrent_version_expiration_days   = optional(number, null)
  }))
  default = []

  validation {
    condition = alltrue([
      for rule in var.lifecycle_rules :
      rule.transition_class == null ? true : contains([
        "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING",
        "GLACIER", "DEEP_ARCHIVE", "GLACIER_IR"
      ], rule.transition_class)
    ])
    error_message = "Valid storage classes are: STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, GLACIER_IR."
  }
}
