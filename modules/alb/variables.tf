variable "vpc_id" {
  description = "ID of the VPC where the ALB will be created."
  type        = string
}

variable "sg_id" {
  description = "Security group ID for the ALB."
  type        = string
}

variable "public_subnets" {
  description = "Public subnet IDs for ALB subnets."
  type        = list(string)
}
