variable "aws_region" {
  description = "AWS region for the state bucket."
  type        = string
  default     = "eu-north-1"
}

variable "project_name" {
  description = "Project name, used as a prefix for resource names."
  type        = string
}

variable "state_admin_user_names" {
  description = "IAM user names that should receive the least-privilege state access policy."
  type        = list(string)
  default     = []
}
