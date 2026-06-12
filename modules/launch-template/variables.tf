variable "security_group_ids" {
  description = "Security groups to associate with the launch template instances."
  type        = list(string)
  default     = []
}
