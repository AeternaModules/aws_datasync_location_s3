variable "datasync_location_s3s" {
  description = <<EOT
Map of datasync_location_s3s, attributes below
Required:
    - s3_bucket_arn
    - subdirectory
    - s3_config (block):
        - bucket_access_role_arn (required)
Optional:
    - agent_arns
    - region
    - s3_storage_class
    - tags
    - tags_all
EOT

  type = map(object({
    s3_bucket_arn    = string
    subdirectory     = string
    agent_arns       = optional(set(string))
    region           = optional(string)
    s3_storage_class = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
    s3_config = object({
      bucket_access_role_arn = string
    })
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

