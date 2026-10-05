variable "compartment_ocid" {
  description = "Compartment where the load balancer is created"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for resource display names"
  type        = string
  default     = "3tier"
}

variable "public_subnet_id" {
  description = "Subnet the load balancer lives in"
  type        = string
}

variable "backend_ips" {
  description = "Private IPs of the application nodes"
  type        = list(string)
}

variable "lb_shape" {
  description = "Load balancer shape"
  type        = string
  default     = "flexible"
}