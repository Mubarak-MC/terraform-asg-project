variable "public_subnets" {
  description = "Subnet IDs for the Auto Scaling Group."
  type        = list(string)
}

variable "target_group_arn" {
  description = "ARN of the target group to attach to the ASG."
  type        = string
}

variable "launch_template_id" {
  description = "ID of the launch template to use for the ASG."
  type        = string
}
