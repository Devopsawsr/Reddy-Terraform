variable "region" {
  description = "The Region where the infra is running"
  type        = string
  default     = " "
}

variable "instance_type" {
  description = "PLease provide the type of instnace that need to be launched"
  type        = string
  default     = " "
}
variable "Name" {
  description = "The Name of the resources"
  type        = string
  default     = " "
}
variable "tags" {
  description = "A map of tags to assign to the instances"
  type        = map(string)
  default     = {}
}
