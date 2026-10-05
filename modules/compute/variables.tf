variable "compartment_ocid" {
  description = "Compartment where instances are created"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for instance display names"
  type        = string
  default     = "3tier"
}

variable "public_subnet_id" {
  description = "Subnet for the bastion host"
  type        = string
}

variable "private_subnet_id" {
  description = "Subnet for the application nodes"
  type        = string
}

variable "ssh_public_key" {
  description = "OpenSSH-format public key injected into all instances"
  type        = string
}

variable "instance_shape" {
  description = "Compute shape (flex shapes require shape_config)"
  type        = string
  default     = "VM.Standard.E5.Flex"
}

variable "instance_ocpus" {
  description = "OCPUs per instance"
  type        = number
  default     = 1
}

variable "instance_memory_gbs" {
  description = "Memory per instance in GB"
  type        = number
  default     = 8
}

variable "app_node_count" {
  description = "How many application nodes to create"
  type        = number
  default     = 2
}

variable "boot_volume_size_gbs" {
  description = "Boot volume size in GB (OCI minimum is 50)"
  type        = number
  default     = 50
}