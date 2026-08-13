resource "aws_datasync_location_s3" "datasync_location_s3s" {
  for_each = var.datasync_location_s3s

  s3_bucket_arn    = each.value.s3_bucket_arn
  subdirectory     = each.value.subdirectory
  agent_arns       = each.value.agent_arns
  region           = each.value.region
  s3_storage_class = each.value.s3_storage_class
  tags             = each.value.tags
  tags_all         = each.value.tags_all

  s3_config {
    bucket_access_role_arn = each.value.s3_config.bucket_access_role_arn
  }
}

