variable "tenancy_ocid" {
  description = "OCID of the tenancy (also the root compartment)"
  type        = string
}

variable "compartment_ocid" {
  description = "OCID of the compartment where resources are created (root = tenancy OCID)"
  type        = string
}

variable "user_ocid" {
  description = "OCID of the user whose API key we're signing with"
  type        = string
}

variable "fingerprint" {
  description = "Fingerprint of the API signing key"
  type        = string
}

variable "private_key_path" {
  description = "Local path to the API private key .pem"
  type        = string
}

variable "region" {
  description = "OCI region identifier, e.g. ap-mumbai-1"
  type        = string
}