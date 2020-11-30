
variable "region" {
  default     = "eu-west-2"
  type        = string
  description = "Region"
}

variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = "10.0.0.0/24"
  description = "List of public subnet CIDR blocks"
}


variable "availability_zones" {
  default     = "eu-west-2a"
  description = "List of availability zones"
}