variable "name" {
  description = "Name prefix for all VPC resources (e.g. jayne-dev)."
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC."
  type        = string

  validation {
    condition     = can(cidrhost(var.cidr_block, 0))
    error_message = "cidr_block must be a valid IPv4 CIDR, e.g. 10.0.0.0/16."
  }
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets (one per AZ)."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets (one per AZ)."
  type        = list(string)
}

variable "az_count" {
  description = "How many availability zones to spread subnets across."
  type        = number
  default     = 2
}

variable "tags" {
  description = "Extra tags applied to all VPC resources."
  type        = map(string)
  default     = {}
}
