output "bucket_name" {
  description = "Name of the Terraform state bucket."
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN of the Terraform state bucket."
  value       = aws_s3_bucket.this.arn
}

output "bucket_region" {
  description = "Region the state bucket lives in."
  value       = aws_s3_bucket.this.region
}

output "state_access_policy_arn" {
  description = "ARN of the least-privilege IAM policy for state access."
  value       = aws_iam_policy.state_access.arn
}
