output "bastion_public_ip" {
  description = "Public IP of the bastion, for SSH"
  value       = oci_core_instance.bastion.public_ip
}

output "app_private_ips" {
  description = "Private IPs of the application nodes"
  value       = oci_core_instance.app[*].private_ip
}

output "app_instance_ids" {
  description = "OCIDs of the application nodes, for load balancer backends"
  value       = oci_core_instance.app[*].id
}