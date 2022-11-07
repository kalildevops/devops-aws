variable "project" {
  type        = string
  default     = ""
  description = "AWS project name"
}

variable "env" {
  type        = string
  default     = ""
  description = "Environment - dev | prod"
}

variable "vpc_cidr" {
  type        = string
  default     = ""
  description = "vpc CIDR"
}

variable "vpc_azs" {
  type        = list
  default     = [""]
  description = "vpc Availability Zones list"
}

variable "private_subnets" {
  type        = list
  default     = [""]
  description = "vpc private subnets list"
}

variable "public_subnets" {
  type        = list
  default     = [""]
  description = "vpc public subnets list"
}

variable "tags" {
  type = map
  default = {
    Creation = "Terraform"
  }
  description = "Map of tags"
}