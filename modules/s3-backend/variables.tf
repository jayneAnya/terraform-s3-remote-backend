variable "bucket_name" {
  description = "Globally unique name for the Terraform state bucket."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$", var.bucket_name))
    error_message = "Bucket name must be 3-63 chars, lowercase letters, numbers, dots or hyphens."
  }
}

variable "authorized_principal_arns" {
  description = "IAM principal ARNs (users/roles) allowed to read and write state objects. All others are denied by the bucket policy."
  type        = list(string)
}

variable "authorized_user_names" {
  description = "IAM user names to attach the least-privilege state access policy to."
  type        = list(string)
  default     = []
}

variable "force_destroy" {
  description = "Allow the bucket to be destroyed even if it contains objects. Keep false for real state buckets."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags applied to all resources in this module."
  type        = map(string)
  default     = {}
}
