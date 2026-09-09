variable "compartment_ocid" {
  description = "Compartment where network resources are created"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for all resource display names"
  type        = string
  default     = "3tier"
}

variable "vcn_cidr" {
  description = "CIDR block for the VCN"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}