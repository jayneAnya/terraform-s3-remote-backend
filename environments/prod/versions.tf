terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  # Remote state in the S3 bucket created by /bootstrap.
  # Each environment uses its own key, so state files never collide.
  backend "s3" {
    bucket       = "jayne-tf-backend-tfstate-657103446220"
    key          = "prod/vpc/terraform.tfstate"
    region       = "eu-north-1"
    encrypt      = true
    use_lockfile = true # S3-native state locking (no DynamoDB needed)
  }
}
