variable "name" {
  type        = string
  description = "The name of the VPC."
}

variable "tags" {
  type = map(any)
}

variable "region" {
  type        = string
  description = "The region in which the VPC should be created."
}

