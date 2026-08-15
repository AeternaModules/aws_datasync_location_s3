output "datasync_location_s3s_id" {
  description = "Map of id values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datasync_location_s3s_agent_arns" {
  description = "Map of agent_arns values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.agent_arns if v.agent_arns != null && length(v.agent_arns) > 0 }
}
output "datasync_location_s3s_arn" {
  description = "Map of arn values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "datasync_location_s3s_region" {
  description = "Map of region values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "datasync_location_s3s_s3_bucket_arn" {
  description = "Map of s3_bucket_arn values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.s3_bucket_arn if v.s3_bucket_arn != null && length(v.s3_bucket_arn) > 0 }
}
output "datasync_location_s3s_s3_config" {
  description = "Map of s3_config values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => one(v.s3_config) if v.s3_config != null && length(v.s3_config) > 0 }
}
output "datasync_location_s3s_s3_storage_class" {
  description = "Map of s3_storage_class values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.s3_storage_class if v.s3_storage_class != null && length(v.s3_storage_class) > 0 }
}
output "datasync_location_s3s_subdirectory" {
  description = "Map of subdirectory values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.subdirectory if v.subdirectory != null && length(v.subdirectory) > 0 }
}
output "datasync_location_s3s_tags" {
  description = "Map of tags values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "datasync_location_s3s_tags_all" {
  description = "Map of tags_all values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "datasync_location_s3s_uri" {
  description = "Map of uri values across all datasync_location_s3s, keyed the same as var.datasync_location_s3s"
  value       = { for k, v in aws_datasync_location_s3.datasync_location_s3s : k => v.uri if v.uri != null && length(v.uri) > 0 }
}

