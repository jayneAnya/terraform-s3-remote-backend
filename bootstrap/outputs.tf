output "state_bucket_name" {
  description = "Use this value as 'bucket' in the environments' backend config."
  value       = module.state_bucket.bucket_name
}

output "state_bucket_arn" {
  description = "ARN of the state bucket."
  value       = module.state_bucket.bucket_arn
}

output "state_bucket_region" {
  description = "Region of the state bucket."
  value       = module.state_bucket.bucket_region
}

output "state_access_policy_arn" {
  description = "Least-privilege IAM policy for state access."
  value       = module.state_bucket.state_access_policy_arn
}
