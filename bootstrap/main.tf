# Who is running Terraform? Used to build a unique bucket name
# and to authorize this identity in the bucket policy.
data "aws_caller_identity" "current" {}

module "state_bucket" {
  source = "../modules/s3-backend"

  bucket_name               = "${var.project_name}-tfstate-${data.aws_caller_identity.current.account_id}"
  authorized_principal_arns = [data.aws_caller_identity.current.arn]
  authorized_user_names     = var.state_admin_user_names
  force_destroy             = false
}
